
--�鷳���Ҳ��� ���ƽ��ţ�085235380017 


select l.serialno ϵ�к�,l.devid,l.kid,l.douserid,u.name ������,l.dotime ����ʱ��,l.ipaddress IP��ַ
 from mcapp..driveinfo_log l
  left join ossapp..users u on l.douserid=u.ID
   where serialno='085235380017' order by l.id
   


select l.serialno ϵ�к�,l.kid,l.douserid,u.name ������,l.dotime ����ʱ��,l.ipaddress IP��ַ
 from mcapp..tcf_setting_log l
  left join ossapp..users u on l.douserid=u.ID
   where serialno='13088294' order by l.id
   
   
16011046��16011048 лл
------------------------------------------

-- '3010173400004'
 
 --ɾ��բ��

 select * 
 --delete
 from mcapp..gate_device where kid=35417 and sn='DDG7020087012100411'
 select * 
 --delete
 from mcapp..gate_timezones_device where sn='DDG7020087012100411'
