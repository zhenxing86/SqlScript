USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[rep_CurrentMonth_SMS_content_detail]    Script Date: 09/25/2013 11:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Create date: 2013-07-02
-- Description:	
-- exec audit_CurrentMonth_SMS_content_detail 12511,16
-- =============================================

ALTER PROCEDURE [dbo].[audit_CurrentMonth_SMS_content_detail]
	@kid int,
	@taskid VARCHAR(500)
AS
BEGIN
	SET NOCOUNT ON;
  declare @recobjid varchar(8000), @sendtype INT
	CREATE TABLE #result(name varchar(50),tel varchar(50))
	
	select @sendtype = sendtype 
		from audit_sms_batch 
		where taskid = @taskid

	--���ͷ�ʽ(0��С���ѣ�1����ʦ��2���꼶��3���༶��4�����ţ�5��ְλ)
	select @recobjid = recobjid 
		FROM audit_sms_batch sb  
		WHERE sb.kid = @kid
			and taskid = @taskid
			    
	select distinct col 	--�������ַ���ת��Ϊ�б�
		into #t
		from BasicData.dbo.f_split(@recobjid,',')	


	IF @sendtype in ('0','1')	--��ѧ������ʦ	
		insert into #result
			select ub.name,ub.mobile 
			from #t t 
				inner join BasicData.dbo.[user] ub 
					on t.col = ub.userid 
	ELSE IF @sendtype = 2 --���꼶	 
		insert into #result
			select g.gname,'$' 
			from #t t 
				inner join BasicData.dbo.grade g 
					on t.col = gid 	
	ELSE IF @sendtype = 3 --���༶	 
		insert into #result
			select c.cname,'$' 
			from #t t 
				inner join BasicData.dbo.class c 
					on t.col = cid 	
	ELSE IF @sendtype  = 4 --������	 	
		insert into #result	
			select bd.dname,'$' 
			from #t t 
				inner join BasicData..department bd 
					on t.col = bd.did
	ELSE IF @sendtype = 5 --��ְλ	 
		insert into #result	
			select col,'$'
			from #t t
	
	select * from #result 
END

GO

exec audit_CurrentMonth_SMS_content_detail 12511,16