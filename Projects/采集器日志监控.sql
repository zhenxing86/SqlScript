--1=�ɼ�����ǹ�ĳ����¼������,2=ͬ��ѧ����������,3=ͬ����ʦ��������,4=�ϴ������¼����,
--5=�ϴ����ڼ�¼����(�Ѿ�����)��6=���ض������ɹ���7= �����ɹ���8=��λ�����������쳣��
--9= �����ǹͨ���쳣��10=�汾����ʧ�ܣ�11=�ӿڵ���ʧ�ܣ�12=���ض�����ʧ�ܣ�13=ˢ��ʧ�ܣ�
--14= ����ʧ�ܣ�15=����֤ʧ�ܣ�16=����accessʧ�ܣ�17=�ϴ�pc������ʧ�ܣ�18=������
--19=ͬ������ǹ��������ѯ/�޸ģ���20=ͬ������ǹ��������ѯ������21=ͬ������Ϣ��
--22=ͬ������ǹĬ�ϲ�ѯ������23=һ�����ʾδ�Ǽǿ���25=ͬ��MU260�豸��Ϣ��26=MU260������Ϣ��27=ͬMU266�豸����״̬

--�豸���ͣ�0��һ�����1��ƽ�壬2��MU260,3������ǹ

LogInfo
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=19 and devicetype=3 --and logmsg not like'%�ɹ�%' 
order by logid desc


--�汾����
select top 100 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=10 and devicetype>1 and logmsg <>'txtRegist_KeyDown' and logmsg not like '%�汾�ɹ���'
and logmsg <>'���ð汾�ӿ����ز�����'
order by logid desc

--ϵͳʱ�䲻׼( �����û�У���ü���)
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=0 and devicetype>1 and logmsg like '%ϵͳʱ�䲻׼%'
order by logid desc

--ˢ��ʧ����־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=13 and devicetype>1 
order by logid desc

--�����ϴ���־������jsonʧ�ܣ�
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=11 and devicetype>1 
order by logid desc

--�����ϴ���־���ϴ�pc������ʧ�ܣ�
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=17 and devicetype>1 
order by logid desc


--���ݲɼ���־�����Ӳ��ϳ���ǹ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=9 and devicetype>1
order by logid desc

--���������쳣��־
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=8 and devicetype>1 and logmsg = '����δ����'
order by logid desc

--���ض�����ʧ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=12 and devicetype>1 and logmsg = '���ض�����ʧ��'
order by logid desc

--�������ݿ��쳣
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype=16 and devicetype>1 and logmsg like '%�쳣%'
order by logid desc

--MU260��������ʧ��
select top 1000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where (logtype=27 or logtype=25)and devicetype=2
order by logid desc

--ͬ������ǹ��������ѯ������
--select top 1000 l.* from mcapp..LogInfo l
--inner join mcapp..driveinfo d 
-- on l.devid=d.devid  
--where logtype=20 and devicetype=3 --and logmsg not like'%�ɹ�%' 
--order by logid desc



