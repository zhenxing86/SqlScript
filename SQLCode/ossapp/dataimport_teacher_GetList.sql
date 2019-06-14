
/****** Object:  StoredProcedure [dbo].[dataimport_teacher_GetList]    Script Date: 01/17/2014 15:31:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[dataimport_teacher_GetList]
@kid int,
@usertype int=1,
@intimestr datetime='',
@status int

AS 

	--�ɹ�������
	if(@status=1)
	begin
	select dname,cname,uname,gender,birthday,account,mobile,title,post,education,politicalface,kinschooltag,'�ɹ�' result
	 from excel_input_teacher
	where kid=@kid and intime=@intimestr and onepass=1	
	end
	--ʧ�ܵ�����
	else if(@status=0)
	begin
	select e.dname,e.cname,e.uname,e.gender,e.birthday,e.account,e.mobile,e.title,e.post,e.education,e.politicalface,e.kinschooltag,
	(case when u.userid is not null then '�ʺ��ظ�,' else '' end)
	+(case when d.did is null then '���Ų�����,' else '' end)
	+(case when ([CommonFun].[dbo].[fn_cellphone](e.mobile)=0 And replace(e.mobile,' ','')<>'' )  then '�ֻ�����,' else '' end)
	+(case when ISDATE(e.birthday)=0 then '���մ���,' else '' end)
	 result
	 from excel_input_teacher e
	 left join basicdata..[user] u on  u.account=e.account and u.deletetag=1
	 left join basicdata..department d on d.dname=e.dname and d.kid=@kid and d.deletetag=1
	where e.kid=@kid and e.intime=@intimestr and e.nopass=1	
	end
	--���������
	else if(@status=-1)
	begin

	select  e.dname,e.cname,e.uname,e.gender,e.birthday,e.account,e.mobile,e.title,e.post,e.education,e.politicalface,e.kinschooltag,
	case when e.nopass=1 then 
	(case when u.userid is not null then '�ʺ��ظ�,' else '' end)
	+(case when d.did is null then '���Ų�����,' else '' end)
	+(case when ([CommonFun].[dbo].[fn_cellphone](e.mobile)=0 And replace(e.mobile,' ','')<>'' )  then '�ֻ�����,' else '' end)
	+(case when ISDATE(e.birthday)=0 then '���մ���,' else '' end)
	else '�ɹ�' end
	 result,e.intime
	 from excel_input_teacher e
	 left join basicdata..[user] u on  u.account=e.account and u.deletetag=1
	 left join basicdata..department d on d.dname=e.dname and d.kid=@kid and d.deletetag=1
	where e.kid=@kid and e.intime=@intimestr
	 
	end
	--basicdata��������
	else if(@status=-2)
	begin
	
		select dname,cname,u.name,gender,birthday,account,mobile,t.title,post,education,politicalface,kinschooltag,'ϵͳ����' result
		 from basicdata..User_Teacher u
		 inner join basicdata..department d on d.did=u.did
		 inner join basicdata..teacher t on t.userid=u.userid
		 outer apply(
			 select max(cname) cname from basicdata..user_class uc
					inner join basicdata..class c on c.cid=uc.cid
					where uc.userid=u.userid
			 ) as classname
		where u.kid=@kid and u.usertype<>98  
	
	end
	

GO

[dataimport_teacher_GetList] 22218,1,'2014-04-10 17:18:43.160',0