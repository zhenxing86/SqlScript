use PayApp
go

select *
--update f set deletetag=0
 from ossapp..[payinfolog] f where kid=23294 and id=8689
 
------��ȡ��Ҫ�󶨵��ײ� feetype_dict_GetList---------
SELECT feetype,name,[from],remarks FROM feetype_dict where bind_vip =1 

---------------���ÿ�ͨ�Ķ�Ȩ�޵���-------------------
--ossapp..users_read_Exist  --326,343,361,365,374,375,392
SELECT * 
--delete ur
FROM ossapp..users_read ur 
 inner join ossapp..users u on ur.userid = u.ID
 where u.ID not in(326,374)

insert into ossapp..users_read(userid)values(361)

select * from ossapp..users u where name='������'
select * from ossapp..users u where ID in(326,343,361,365,374,375,392)
 
 
------�Զ���ͨvip ������¼  ���������û����Զ���ͨVIP���ڿͷ����ߵ��Զ���VIP����----------
ossapp..addservice_vip_Add_auto_update

select * from ossapp..addservice_vip_Add_auto_update_log l
 inner join ossapp..users u on l.douserid=u.id where kid=20581
 
---------�Զ�vip���ڣ����Ķ��⣩---------------
--ossapp..addservice_vip_Add_renewal_getlog
--ossapp..addservice_vip_Add_renewal

