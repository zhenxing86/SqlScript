--<model value="0" desc="һ��������־"/>
--  <model value="1" desc="ƽ��ˢ����־"/>
--  <model value="2" desc="����ǹˢ����־"/>
--  <model value="3" desc="����ͨѶ�����־"/>
--  <model value="4" desc="����"/>

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=2 and devicetype=1 --and d.devid='001251113' --and logmsg not like '%PostRunStatusִ���˷��������ִ���������Ϊ%'
--and logmsg not like '%Disk space%'
order by logid desc

--������Ϣ�Ѿ�����
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=1 and logmsg like '%������Ϣ�Ѿ�����%'
order by logid desc

--�汾����
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=1 and logmsg like '%ȡ���˰汾����%'
order by logid desc

select top 100 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=3 and devicetype=1 and logmsg like '%UpdateFirmware%'
order by logid desc

select top 10 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=10 and devicetype=0 and logmsg ='update fail'

--�����쳣
select top 10 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and logmsg like '%�����쳣%'
order by logid desc

--ϵͳʱ�䲻׼
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=1 and logmsg like '%ϵͳʱ�䲻׼%'
order by logid desc

--ˢ��ʧ����־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=1 and logmsg like '%ˢ��ʧ��%'
order by logid desc


--δ�Ǽǿ���־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=1 and logmsg like '%δ�Ǽǿ�%'
order by logid desc

--д��ʧ����־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=1 and logmsg like '%д��ʧ��%'
order by logid desc

--(ƽ��û��)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=1 and logmsg like '%��Ƭ������֤ʧ��%'
order by logid desc

--(ƽ��û��)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=1 and logmsg like '%����Ϣû���ҵ�%'
order by logid desc

select top 1 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=14 and devicetype=1 and logmsg like 'the card is not registered. card:%'

--�����ϴ���־�����ýӿ�ʧ�ܣ�
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=3 and devicetype=1 and logmsg like '%json%'
order by logid desc

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=1 and logmsg like '%ViewActivity�޷�������������,����δ�ϴ�ѧ������Ϊ��%'
order by logid desc

--���ݲɼ���־�����Ӳ��ϳ���ǹ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=2 and devicetype=1 and logmsg like '%Communicate%'
order by logid desc

--���������쳣��־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=3 and devicetype=1 and logmsg like '%��������%'
order by logid desc

init_stu_mc_day

--���̿ռ䲻��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=16 and devicetype=0 and logmsg like '%Disk space%'
and cast(
			(case ISNUMERIC(REPLACE(REPLACE(logmsg,'Disk space ',''),'GB available','')) 
			 when 1 then REPLACE(REPLACE(logmsg,'Disk space ',''),'GB available','')
			else '0.0' end)
		 as float)<1.0
order by logid desc

--���������ճ�
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=4 and devicetype=1 
order by logid desc

LogInfo_ex

