USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[Get_SMS_ReSendUsers]    Script Date: 12/31/2013 17:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      xie
-- Create date: 2013-12-31
-- Description:	�������ڻ�ȡ���·��͵��û��б�
-- Paradef: 
-- Memo:	
	exec Get_SMS_ReSendUsers '����xxx%stuname%xxx', 123, '35,',2,'2013-05-29',0,0,12511
	exec Get_SMS_ReSendUsers '���Ų���xxx%stuname%xxx', 123, '26216',4,'2013-05-29',0,0,12511
	exec Get_SMS_ReSendUsers '���Ų���xxx%stuname%xxx', 123, '46141,46142,46143',3,'2013-05-29',0,0,12511

*/ 

create PROCEDURE [dbo].[Get_SMS_ReSendUsers] 
	@taskid int
AS 
declare 
	@recuserid varchar(8000),
	@sendtype int,--���ͷ�ʽ(0��С���ѣ�1����ʦ��2���꼶��3���༶��4�����ţ�5��ְλ)
	@kid int,
	@vip int,
	@smstype int --�������ͣ�1�༶֪ͨ��2԰��֪ͨ��3��԰���֣�4��ҵ���ã�5��ܰ��ʾ��6������
BEGIN
	SET NOCOUNT ON
	
	select @kid=kid,@sendtype=sendtype,@recuserid=recobjid 
	 from sms_batch sb 
	 where taskid=@taskid
	
	--smsport ���Ͷ˿ڣ�-1Ĭ�ϣ�0�����䣬5��������8������
	CREATE TABLE #receiver(userid int, name varchar(50), mobile varchar(20), cid int)
	
	select distinct col 	--�������ַ���ת��Ϊ�б�
		into #recuserid 
		from BasicData.dbo.f_split(@recuserid,',')
        
	BEGIN/*===========�����ͷ�ʽ��ȡ������Ա�б�===============================================================*/
		if @sendtype in(0,1)-- ��С���ѡ���ʦ
		insert into #receiver(userid, name, mobile)
			select u.userid, u.name, u.mobile
				from #recuserid rc
					inner join BasicData.dbo.[user] u
						on rc.col = u.userid 
						and commonfun.dbo.fn_cellphone(u.mobile) = 1 -- �ж��ֻ������Ƿ�Ϸ�
						
		if @sendtype = 0
			update #receiver 
				set cid = uc.cid
				from #receiver rc
					inner join BasicData..user_class uc 
						on rc.userid = uc.userid	
					
		if @sendtype = 2 -- ���꼶
		insert into #receiver(userid, name, mobile,cid)
			select u.userid, u.name, u.mobile, uc.cid 
				from #recuserid rc 
					inner join BasicData..class c 
						on c.grade = rc.col
					inner join BasicData..user_class uc 
						on uc.cid=c.cid
					inner join BasicData.dbo.[user] u
						on u.userid = uc.userid
						and commonfun.dbo.fn_cellphone(u.mobile) = 1
						and u.deletetag = 1 
						and u.kid = @kid						
						and u.usertype = 0
						
		if @sendtype = 3 --���༶
		insert into #receiver(userid, name, mobile,cid)
			select u.userid, u.name, u.mobile, uc.cid  
				from #recuserid rc 
					inner join BasicData..user_class uc 
						on uc.cid=rc.col
					
					inner join BasicData.dbo.[user] u
						on u.userid = uc.userid
						and commonfun.dbo.fn_cellphone(u.mobile) = 1
						and u.deletetag = 1  
						and u.kid = @kid				
						and u.usertype = 0			
		
		if @sendtype = 4 --������
		insert into #receiver(userid, name, mobile)
			select u.userid, u.name, u.mobile 
				from #recuserid rc 
					inner join BasicData..teacher t 
						on t.did=rc.col
					
					inner join BasicData.dbo.[user] u
						on u.userid = t.userid 
						and commonfun.dbo.fn_cellphone(u.mobile) = 1
						and u.deletetag = 1 
						and u.kid = @kid	
						and u.usertype > 0			
											
		if @sendtype = 5 --��ְλ
		insert into #receiver(userid, name, mobile)
			select u.userid, u.name, u.mobile 
				from #recuserid rc 
					inner join BasicData..teacher t 
						on t.title=rc.col
					inner join BasicData.dbo.[user] u
						on u.userid = t.userid 
						and commonfun.dbo.fn_cellphone(u.mobile) = 1
						and u.deletetag = 1 
						and u.kid = @kid
						and u.usertype > 0		

	END
	
	if @sendtype in(2,3) --��ȫ԰���͵��׶�԰��ɾ����VIP��С����
	BEGIN
		select @vip=COUNT(1) 
			from KWebCMS..site_config 
			where isvipcontrol=1 
				and siteid=@kid
		if(@vip=1)
			DELETE #receiver
				from #receiver rc
					inner join BasicData.dbo.Child d 
						on d.userid=rc.userid
				where ISNULL(d.vipstatus,0) <> 1 
	END
	
	select userid, name, mobile from #receiver
	drop table #receiver

END
