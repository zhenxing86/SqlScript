use BasicData
go



--33228]����ʦ����ѧ���������׶�԰  ���ˣ��鷳һ�£��������԰��ѧ�ڵ�����Ŷ��

-----------------��3����2017/2�·ݿ�ʼע�������--------------------------
 select uc.kid,uc.cname,uc.account,uc.mobile,uc.name,u.regdatetime from basicdata..user_child uc
 inner join basicdata..[user] u
  on uc.userid=u.userid
   where u.kid=33228 and u.regdatetime>='2017-02-01'


[32833]�����ж����������׶�԰  [33152]���춦����ɳ���������׶�԰ ���ˣ��鷳��æ��������԰��ѧ�ڵ���������һ�£�ллŶ

--������԰�û�  --[34114]��������Ժ�������������ܷ񵼳����԰��ѧ����;��԰���ˣ���ѧ�����������أ�
 select k.kid,c.cname,u.account,u.mobile,u.name,u.regdatetime,k.outtime
  from basicdata..[user] u
  inner join basicdata..leave_kindergarten k on u.userid=k.userid 
  inner join basicdata..leave_user_class uc on uc.userid=u.userid
  inner join basicdata..class c on c.cid = uc.cid
   where k.kid=33152 and u.regdatetime>='2016-09-01' --and u.regdatetime<='2017-02-01'
    and u.usertype=0
    
    
--[33849]�����л��������׶�԰,��һ�����԰��ѧ������ӵ���ʦ
 select u.kid,t.title,u.account,u.mobile,u.name,u.regdatetime
  from basicdata..[user] u
 inner join BasicData..teacher t on t.userid=u.userid
   where u.kid=33152 and u.regdatetime>='2017-02-01' and usertype>0

--��ѯ�����¼
select * from kmapp.dbo.user_class_update_history where userid=2158189
select * from BasicData..user_class_all where userid=2158189
select * from AppLogs.dbo.EditLog where DbName='BasicData' and TbName='user_class' and KeyCol2=2158189

------------------------------------�û������˵�bug--------------------------------------
  ;with data as(
  select uc.*,ROW_NUMBER() over(partition by uc.cid order by uc.ucid) raws
   from user_class uc
   inner join [user] u on u.userid=uc.userid
   inner join Class c on c.cid=uc.cid where c.kid=5213 and u.usertype=0 and uc.[order] is null  --cid=155823  -- userid=2371824
  )
  update d set [order]=raws
  from data d
  
  
  --�û������˵�bug
  ;with data as(
  select uc.*,ROW_NUMBER() over(partition by uc.cid order by uc.ucid) raws
   from user_class uc
   inner join [user] u on u.userid=uc.userid
   inner join Class c on c.cid=uc.cid where c.kid=5213 and u.usertype=0 and uc.cid=122530  -- userid=2371824
  )
  update d set [order]=raws
  from data d
  
use GBApp
go
--create table class_tmp(cname nvarchar(50),username nvarchar(50),orderby int)
--truncate table class_tmp
--drop table class_tmp

;with data as(
	select ct.username, uc.*,c.cname,ROW_NUMBER() over(partition by uc.cid order by uc.ucid) raws,ct.orderby
	from gbapp..class_tmp ct
	left join basicdata..[user] u on ct.username=u.name and u.deletetag=1 and u.usertype=0 and u.kid=5213
	left join basicdata..Class c on c.cname=ct.cname and c.deletetag=1 and c.cid=143151
	left join basicdata..user_class uc on u.userid = uc.userid and c.cid=uc.cid  
)
update d set [order]=orderby
from data d

select * from BasicData..class where kid=5213 and cname='С����'
update class_tmp set cname='С����'

;with data as(
  select uc.*,ROW_NUMBER() over(partition by uc.cid order by uc.[order] desc) raws
   from user_class uc
   inner join [user] u on u.userid=uc.userid
   inner join Class c on c.cid=uc.cid where c.kid=5213 and u.usertype=0 
)
update d set [order]=raws
 from data d
 
 
select * from BasicData..class where kid=5213 and cname='С����'
update class_tmp set cname='С����'

-------------------------------------------------------------------------------------------------------
  

select * from ossapp..dict where name='��������' order by ID
insert into ossapp..dict(id,name,info,deletetag)
values(2419,'��������','�Ķ�����',1)

--����oss�ʺ�
select * from ossapp..users where account='lcy'
insert into ossapp..users(account,password,usertype,roleid,bid,name,regdatetime,seruid,deletetag,jxsid)
 values('lcy','7C4A8D09CA3762AF61E59520943DC26494F8941B',0,1,0,'���',GETDATE(),0,1,0)
