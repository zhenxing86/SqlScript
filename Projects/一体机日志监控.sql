--1=�ɼ�����ǹ�ĳ����¼������,2=ͬ��ѧ����������,3=ͬ����ʦ��������,4=�ϴ������¼����,
--5=�ϴ����ڼ�¼����(�Ѿ�����)��6=���ض������ɹ���7= �����ɹ���8=��λ�����������쳣��
--9= �����ǹͨ���쳣��10=�汾����ʧ�ܣ�11=�ӿڵ���ʧ�ܣ�12=���ض�����ʧ�ܣ�13=ˢ��ʧ�ܣ�
--14= ����ʧ�ܣ�15=����֤ʧ�ܣ�16=����accessʧ�ܣ�17=�ϴ�pc������ʧ�ܣ�18=������
--19=ͬ������ǹ��������ѯ/�޸ģ���20=ͬ������ǹ��������ѯ������21=ͬ������Ϣ��
--22=ͬ������ǹĬ�ϲ�ѯ������23=һ�����ʾδ�Ǽǿ���25=ͬ��MU260�豸��Ϣ��26=MU260������Ϣ��27=ͬMU266�豸����״̬

--<model value="0" desc="һ��������־"/>
--  <model value="1" desc="ƽ��ˢ����־"/>
--  <model value="2" desc="����ǹˢ����־"/>
--  <model value="3" desc="����ͨѶ�����־"/>
--  <model value="4" desc="����"/>

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=13 and devicetype=0 --and logmsg like'%��֧�ֵĴ��ڳ�ʼ������' 
order by logid desc

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=4 and devicetype=0 and d.devid='001251113' --and logmsg not like '%PostRunStatusִ���˷��������ִ���������Ϊ%'
order by logid desc

--�������ڴ���
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and (logmsg like'%��֧�ֵĴ��ڳ�ʼ������' 
 or logmsg like '%�������ڴ���')
order by logid desc


--������Ϣ�Ѿ�����
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and logmsg like '%������Ϣ�Ѿ�����%'
order by logid desc

--�汾���� (һ���û��)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and logmsg like '%ȡ���˰汾����%'
order by logid desc

--�汾���� (һ���)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=10 and devicetype=0 and logmsg ='update fail'
order by logid desc

--�����쳣(һ���û��)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and logmsg like '%�����쳣%'
order by logid desc

--ϵͳʱ�䲻׼
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype=0 and logmsg like '%ϵͳʱ�䲻׼%'
order by logid desc

--ˢ��ʧ����־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=0 and logmsg like '%ˢ��ʧ��%'
order by logid desc


--δ�Ǽǿ���־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=0 and logmsg like '%δ�Ǽǿ�%'
order by logid desc

--д��ʧ����־(һ���û��)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=0 and logmsg like '%д��ʧ��%'
order by logid desc

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=0 and logmsg like '%��Ƭ������֤ʧ��%'
order by logid desc

select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=1 and devicetype=0 and logmsg like '%����Ϣû���ҵ�'
order by logid desc



--����ʧ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=14 and devicetype=0 and logmsg like 'the card is not registered. card:%'
order by logid desc

--���ض�����ʧ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=12 and devicetype=0 and logmsg like '%Reader load fail%'
order by logid desc


--�����ϴ���־�����ýӿ�ʧ�ܣ�
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=3 and devicetype=0 and logmsg like '%json%'
order by logid desc


--���ݲɼ���־�����Ӳ��ϳ���ǹ��
select top 1000 l.* from mcapp..LogInfo l --(һ����У��������°汾��)
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=2 and devicetype=0 and logmsg like '%����ǹ����ʧ��%'
order by logid desc

select top 1000 l.* from mcapp..LogInfo l   --(һ�����)
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=9 and devicetype=0 and logmsg ='the gun fail to connected'
order by logid desc


--���������쳣��־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=3 and devicetype=0 and logmsg like '%��������%'
order by logid desc

select top 1000 l.* from mcapp..LogInfo l  --(һ����Դ�Ϊ׼)
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=8 and devicetype=0 and logmsg ='Network connected fail'
order by logid desc

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




