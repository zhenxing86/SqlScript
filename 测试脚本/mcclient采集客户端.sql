
--mcclient/mu260

--��������Ϊ ������VIP�ɿ�����
--insert into BlogApp..permissionsetting(ptype,kid)
select 70,kid from mcapp..driveinfo d where devid like '%30' 
and not exists( select * from BlogApp..permissionsetting p where d.kid=p.kid)
