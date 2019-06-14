USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[rep_CurrentMonth_SMS_content]    Script Date: 09/25/2013 11:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		mh
-- Create date: 2013-07-01
-- Description:	
-- exec [audit_CurrentMonth_SMS_content] 1,100,0,0,'2009-06-01', '2014-06-14',12511,288556,0
-- =============================================

alter PROCEDURE [dbo].[audit_CurrentMonth_SMS_content]
	@page int,
	@size int,
	@issended bit, -- 0�ѷ��ͣ�1������
	@isaudit bit, -- 0����ˣ�1�����
	@bgndate datetime,
	@enddate datetime,
	@kid int,
	@userid int,-- �ж�@usertype>1��ѯȫ��������鱾��
	@type int = 0
	
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @usertype INT
	
	create table #result([state] int,name varchar(50),smscontent nvarchar(500),sendtime datetime,
	                     sendusercount int, sendsmscount int, sendtype int,taskid bigint,ID INT IDENTITY,userid int)
	
	IF @type = 0--��ѧ��
	BEGIN
		 select @usertype=max(case role_name when '��ʦ' then 1 when '����Ա' then 98 when '԰��' then 97 end)  
			from  KWebCMS..site_user stu 
			inner join KWebCMS_Right..sac_user_role sur on sur.[user_id]=stu.[UID]
			inner join KWebCMS_Right..sac_role sr on sr.role_id=sur.role_id
			where stu.appuserid=@userid

			if(@usertype is null)
			begin
			  select @usertype = usertype 
					  from BasicData.dbo.[user] 
					  where userid = @userid
			end
		  
		IF @usertype > 1 --��ȫ��
			insert into #result 
		  select sb.[state],u.name, sb.smscontent, sb.sendtime, sum(sb.Sendusercount), 
	           SUM(sb.sendsmscount), sb.sendtype, MIN(sb.taskid),u.userid
	      from audit_sms_batch sb
	        inner join BasicData..[user] u
	        on sb.sender = u.userid
	      where sb.kid = @kid
	        and sb.sendtime >= CONVERT(VARCHAR(10),@bgndate,120)
	        and sb.sendtime < CONVERT(VARCHAR(10),DATEADD(DD,1,@enddate),120)
	        and CASE WHEN GETDATE() > sb.sendtime THEN 0 ELSE 1 end = @issended
	        and sb.cid <> 0
			GROUP BY sb.[state],u.name, sb.smscontent, sb.sendtime, sb.sendtype,u.userid    
	  ELSE  --�鱾��
	    insert into #result
		  select sb.[state],u.name, sb.smscontent, sb.sendtime, sum(sb.Sendusercount), 
	           SUM(sb.sendsmscount), sb.sendtype,  MIN(sb.taskid),u.userid
	      from audit_sms_batch sb
	        inner join BasicData..[user] u
	        on sb.sender = u.userid
	        inner join BasicData..user_class uc
	        on u.userid = uc.userid
	      where sb.kid = @kid
	        and sb.sendtime >= CONVERT(VARCHAR(10),@bgndate,120)
	        and sb.sendtime < CONVERT(VARCHAR(10),DATEADD(DD,1,@enddate),120)
	        and CASE WHEN GETDATE() > sb.sendtime THEN 0 ELSE 1 end = @issended
	        and uc.userid = @userid
	        and sb.cid = uc.cid
			GROUP BY sb.[state],u.name, sb.smscontent, sb.sendtime, sb.sendtype ,u.userid 
	        
  END
  ELSE --����ʦ
  BEGIN
    insert into #result
    select sb.[state],u.name, sb.smscontent, sb.sendtime, sb.Sendusercount, 
	         sb.sendsmscount, sb.sendtype, sb.taskid,sb.sender
	    from audit_sms_batch sb
	      inner join BasicData..[user] u
	      on sb.sender = u.userid
	    where sb.kid = @kid
	      and sb.sendtime >= CONVERT(VARCHAR(10),@bgndate,120)
	      and sb.sendtime < CONVERT(VARCHAR(10),DATEADD(DD,1,@enddate),120)
	      and CASE WHEN GETDATE() > sb.sendtime THEN 0 ELSE 1 end = @issended
	      and sb.cid = 0 
      
	END
	
	 declare @where varchar(100)
	
	set @where='[state]='+CONVERT(varchar,@isaudit)
	
	exec dbo.sp_GridViewByPager 

     @viewName = '#result',             --����
     @fieldName  = 'name,smscontent,sendtime,sendusercount,sendsmscount,sendtype,taskid,state,userid',      --��ѯ�ֶ�
     @keyName  = 'Id',       --�����ֶ�
     @pageSize = @size,                 --ÿҳ��¼��
     @pageNo = @page,                     --��ǰҳ
     @orderString = 'sendtime desc',          --��������
     @whereString = @where,  --WHERE����
     @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����
     @IsRowNo = 0										 --�Ƿ�����к�

	
END

GO

exec [audit_CurrentMonth_SMS_content] 1,100,0,0,'2009-06-01', '2014-06-14',12511,288556,0