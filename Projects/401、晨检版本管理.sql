
--�豸���ͣ�0��һ�����1��ƽ�壬2��MU260,3������ǹ
--�汾���ͣ�-1 �����棬0���ڲ�棬1���ȶ���
select * from mcapp..device_version order by devicetype,firmw


select * from mcapp..device_version where devicetype=3 and id=94
select * from mcapp..device_version where devicetype=3 and id=119




insert into mcapp..device_version(devicetype,firmw,daddr,publish_time,crtdate,deletetag,publish_type)
select devicetype,'pc_v3.5.5.1001','http://mcgw.pc118.zgyey.com/version/pc_v3.5.4.1004.zip',GETDATE(),GETDATE(),deletetag,0
 from mcapp..device_version where devicetype=3 and id=94

insert into mcapp..device_version(devicetype,firmw,daddr,publish_time,crtdate,deletetag,publish_type)
select devicetype,'pc_v4.0.20','http://mcgw.pc118.zgyey.com/version/pc_v4.0.20.zip',GETDATE(),GETDATE(),deletetag,0 
from mcapp..device_version where devicetype=3 and id=119