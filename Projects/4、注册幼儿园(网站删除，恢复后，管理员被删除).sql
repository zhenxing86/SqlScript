




------------��վɾ���ˣ�Ȼ���ָֻ���ȥ�����¹���Ա��ɾ����-------------
use ossapp
go
--[kinbaseinfo_DeleteTag] @kid=0
--kinbaseinfo_ReDelete @kid=0 --�ָ�
--kinbaseinfo_Delete @kid=0   --����ɾ��
select * 
--update u set deletetag=1
from basicdata..[user] u where userid= 458950

select * 
 --update  k set deletetag=0  
 from ossapp..[kinbaseinfo] WHERE kid=10729 
select * from BasicData..[user] where kid=16408
select * from kwebcms..[site] where siteid=16408
select * 
--update k set deletetag=1
from basicdata..kindergarten k where kid=10729
    
--------------��ѯ������־-------------
--[keylog_ADD]
select * from LogData..ossapp_keylog where keys=16408 order by ID desc
select * from LogData..ossapp_keylog where remark='@id=16408' order by ID desc
select * from LogData..ossapp_keylog where descname='ɾ���ͻ���Ϣ' order by ID desc
select COUNT(*) from LogData..ossapp_keylog
-----------------------------------------------------

KWebCMS.WebApp.CMSSession.UserID = 116223
select * from kwebcms..site_user where userid  =116223
basicdata..GetUserModelByKids������ʺ�Ȩ�ޱ������⡣
select * from KWebCMS..site_user where appuserid=1437369
����ʺ�������վע��zgyey.com�����ġ�

select * from BasicData..department where kid = 28824

KWebCMS..site_user
KWebCMS_Right..sac_user_role
KWebCMS_Right..sac_site_instance
KWebCMS_Right.dbo.sac_role


 select u.userid,u.account,u.[password]  
 ,max(case role_name when '��ʦ' then 1 when '����Ա' then 98 when '԰��' then 97 end) usertype,  
 u.kid,u.name      
  from basicdata..[user] u  
   inner join KWebCMS..site_user stu on u.userid=stu.appuserid and u.usertype>0 --and u.kid=@kid  
   inner join KWebCMS_Right..sac_user_role sur on sur.[user_id]=stu.[UID]    
   inner join KWebCMS_Right..sac_role sr on sr.role_id=sur.role_id    
  where  u.kid=29994 and role_name in('����Ա' ,'԰��')  
  group by u.userid,u.account,u.[password],u.kid,u.name    
  order by usertype desc     
    
SELECT [user_id],sac_user_role.role_id,site_id,site_instance_id,role_name  
FROM KWebCMS_Right..sac_user_role  
INNER JOIN KWebCMS_Right..sac_role ON sac_role.role_id=sac_user_role.role_id  
WHERE [user_id]=109191  

--KWebCMS.WebApp.CMSSession.UserID ��kwebcms..site_user���userid =
--1����ȡuserid_id   site_userDataProxy.site_user_GetRight_uid(KWebCMS.WebApp.CMSSession.UserID);
kwebcms..GetRightUserID
select uid,* from kwebcms..site_user where userid= 116160

2��right_GetCurrentUserRightList 109128
SELECT DISTINCT sac_right.right_id,right_code  
FROM KWebCMS_Right..sac_user_role   
INNER JOIN KWebCMS_Right..sac_role_right ON sac_user_role.role_id=sac_role_right.role_id  
INNER JOIN KWebCMS_Right..sac_right ON sac_role_right.right_id=sac_right.right_id  
WHERE [user_id]=109128 

right_GetCurrentUserRightList
right_GetRoleRightList

select * from KWebCMS_Right..sac_user_role where user_id = 63475
select * from KWebCMS_Right..sac_role_right where role_id = 47097
select * from KWebCMS_Right..sac_right where right_id = 75381
  
  KWebCMS_Right..
  
Select b.name From Syscomments a, sysobjects b Where TEXT Like '%sac_right%' and a.id = b.id

