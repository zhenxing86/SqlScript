
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

--�豸���ͣ�0��һ�����1��ƽ�壬2��MU260,3������ǹ

--�����ϴ���־  
--�ɼ���/MU260  logtype=11  logmsg like '����ѧ������ӿ�ʧ�ܣ�%'
--һ���  logtype=11  logmsg ����ȷ������Ҫ���ơ�������
--ƽ��

logtype=1 or 
select top 10000 l.* from mcapp..LogInfo l
inner join mcapp..driveinfo d 
 on l.devid=d.devid  
where logtype>=0 and devicetype=1
order by logid desc

select top 2000* from mcapp..LogInfo where logtype=2 and devid like '%[1-2][0-9]' --and logmsg like '����ѧ������ӿ�ʧ�ܣ�%'
order by logid desc

proc 
���룺��־ʱ��  �ϴ�ʱ��
�����
kid kname devid gunid upcnt recordcnt 

--����ͨѶ��־
��ʼ�ɼ�ʱ�䣺2014-5-21 9:19:05���ɼ�����ʱ�䣺2014-5-21 9:22:41�����ɼ�������303��
--���ݲɼ���־

driveinfo

--ϵͳʱ���쳣��־

--���������쳣

--�洢�ռ䲻��Ԥ��  (��ѯ�����ϴ���־�����һ����ʾ�Ĵ��̴�С��1G������)
mcapp..rep_mcdata_harddisk
Kid,Kname,Devid,Gunid,diskspace,Content,logtime


select * from mcapp..driveinfo
 where kid=@kid and 
 select Kid,Kname,Devid,Gunid,diskspace,Content,logtime 
 from  
  mcapp..loginfo   
  where logtype = 16  
  and kid = @kid and devid=@ 
  and logtime >= CONVERT(VARCHAR(10),@bgndate,120)  
  and logtime < CONVERT(VARCHAR(10),DATEADD(DD,1,@enddate),120)  
  

ossapp..GetCustomer_SelectList

select distinct Category from dbo.CustomerService
select * from dbo.CustomerService 