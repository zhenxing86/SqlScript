
--select *from blogapp..permissionsetting where ptype=81






select * from kwebcms_right.dbo.sac_right where right_name='�ɷѷ�ʽ' and site_instance_id=0

;with cet as(
 SELECT t3.*--,t1.*,t2.*
  FROM kwebcms..site t1
    INNER JOIN kwebcms_right..sac_site_instance t2
     ON t1.org_id=t2.org_id 
    INNER JOIN kwebcms_right..sac_role t3
     ON t2.site_instance_id=t3.site_instance_id
    --inner join blogapp..permissionsetting p
    -- on p.kid=t1.siteid and ptype=81 
     WHERE t1.siteid in(21775) --t1.siteid not in( 21769,21770,21771,21772,21773,21796,21815,21818,21819,21821,21831,21834,21835,21836,26457,26052,25737,21832) 
and t2.site_id=1 and t3.role_name='����Ա' 
)
insert into kwebcms_right..sac_role_right(role_id,right_id)
select c.role_id,s.right_id
from cet c
cross join kwebcms_right.dbo.sac_right s
  where s.right_name='�ɷѷ�ʽ' and s.site_instance_id=0
  and not exists (select 1 from kwebcms_right..sac_role_right r
   where r.role_id=c.role_id and s.right_id=r.right_id
   )
	order by c.role_id	     

			     
--��̨�˵��б�		     
SELECT t4.*,r.* FROM kwebcms..site t1
INNER JOIN kwebcms_right..sac_site_instance t2
 ON t1.org_id=t2.org_id 
INNER JOIN kwebcms_right..sac_role t3
 ON t2.site_instance_id=t3.site_instance_id
INNER JOIN kwebcms_right..sac_role_right t4 ON t3.role_id=t4.role_id
inner join kwebcms_right.dbo.sac_right r on r.right_id=t4.right_id
 WHERE t1.siteid=20675 and t2.site_id=1 and t3.role_name='����Ա' and right_name='�ɷѷ�ʽ'
			     



--�׶�԰����
declare @siteid int =22052 ,@org_id int ,@name nvarchar(500),@site_instance_id int
select @org_id=org_id,@name = name from KWebCMS..site where siteid = @siteid 
select @site_instance_id=site_instance_id from KWebCMS_Right..sac_site_instance where org_id=@org_id
--1 �û�Ȩ��
select s.org_id,i.site_instance_id,u.user_id right_userid into #site_instance
from KWebCMS..site s
inner join KWebCMS_Right..sac_site_instance i
on  i.org_id=s.org_id
inner join KWebCMS_Right..sac_user u
 on u.username='��վ����Ա' and u.org_id=i.org_id 
inner join blogapp..permissionsetting p
 on p.kid=s.siteid and ptype=81 
 where kid in( 22052)


select * from KWebCMS..site where siteid=26872  --22430
select * from KWebCMS_Right..sac_org where org_name = '�����������׶�԰' --org_id=22430
--��ע����Щ�׶�԰������ֶ�����¼��������http://ncms.zgyey.com���ú�̨�˵�ʱ���ɹ���������취��ֻ����һ����¼���ɡ���
select * from KWebCMS_Right..sac_site_instance where org_id=22430-- and site_instance_id in(22073,22074)
select * from KWebCMS_Right..sac_role where site_instance_id =22087
select top 100 * from KWebCMS_Right..sac_role_right r
 inner join KWebCMS_Right..sac_site_right s on r.right_id = s.right_id where role_id=66215
select * from KWebCMS_Right..sac_site_right where site_instance_id=22087