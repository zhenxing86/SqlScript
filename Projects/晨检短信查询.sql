--1����ƫ�� 2���� 3�������� 4������ 5Ƥ�� 6��к 7���۲� 8�ص�۲� 9��ָ�� 10��ҩ���� 11�ҳ����� 

--1�������׶�԰
select sendSet,* from mcapp..kindergarten where kid =12511
--2����԰����԰��Ҫ������  
select * from blogapp..permissionsetting where [ptype]=113 and kid=28277  
select * from applogs..permissionsetting_log where [ptype]=113 and kid=28277  
--logdata..sitelog_add("IDΪ" + kid + "���׶�԰���ÿ���" + str, UserID
select * from logdata..site_log where describe like 'IDΪ28277���׶�԰����%�༶Ȧ'

--3����������ײ�
select *
--update a set a7=806,describe='��ͨ',pname='�ײ�4',vippaystate=1,ftime=getdate(), ltime=dateadd(year,1,getdate())
 from ossapp..addservice a where uid =653612
 
 ;WITH CET AS          
 (          
  select distinct kid    from sms..sms_message_curmonth where smstype=14 and writetime>='2015-09-11'  
  union    
  SELECT distinct kid           
   FROM sms..sms_message_yx_temp  --���ţ�ȫ���� 
    where smstype=14 and writetime>='2015-09-11' 
 )            
select k.kid,case when c.kid>0 then 1 else 0 end '��԰����'
 from mcapp..kindergarten k
 inner join BlogApp..permissionsetting p
  on k.kid = p.kid and ptype=90
 left join CET c
  on k.kid = c.kid
  order by k.kid
  
--4��ˢ����¼
SELECT * from mcapp..stu_mc_day d
 inner join BasicData..User_Child uc
  on d.stuid=uc.userid
   where d.kid =18208 and convert(varchar(10),cdate,120)='2017-05-17' and zz<>''
   and sms_zz<>''
   
   '18922209598jz'

select * from BasicData..User_Child where kid=30869 and name='�����'
select * from mcapp..cardinfo where userid=2161919
select * from mcapp..stu_mc_day where kid=30869 and convert(varchar(10),cdate,120)='2017-05-16' and card='1608030401'
select * from mcapp..stu_mc_day_raw where kid=30869 and convert(varchar(10),cdate,120)='2017-05-16' and card='1608030401'

select * from AppLogs..mc_log   
  where kid = 18208 and crtdate>='2015-12-10'  and userid = 9684868  
  
select *from mcapp..stu_mc_day d
 left join mcapp..sms_mc s
  on s.recuserid = d.stuid  and s.writetime>='2015-12-10'
 where d.cdate>='2015-12-10' and d.cdate<='2015-12-10' and sms_zz='2' and s.guid is null order by s.recuserid

select *from mcapp..stu_mc_day d
 left join mcapp..push_mc s
  on s.userid = d.stuid  and s.writetime>='2015-12-10'
 where d.cdate>='2015-12-10' and sms_zz='2' and s.userid is null order by s.userid

select *from mcapp..push_mc where kid=18208 and  writetime>='2015-12-10' 

select * from BasicData..[USER] where userid=9684868 1560523

permissionsetting_update ossapp
select * from applogs..permissionsetting_log where [ptype]=113 and kid=28277     

update BasicData..[user] set mobile='13632432093' where userid=653612 and kid= 12511
select a7,*from BasicData..[user] u
left join ossapp..addservice a on a.uid=u.userid
where u.userid=802913 and u.kid =12511


select * from mcapp..sms_mc where writetime>='2015-09-16' 
select COUNT(1) from mcapp..stu_mc_day where adate>='2015-09-16' and ftype=1 
select * from mcapp..sms_mc where writetime>='2015-09-16 9:00' 
select * from mcapp..push_mc where writetime>='2015-09-16 9:00' 


���䣺
[SMS].[dbo].[sms_message] --������ת����Ӫ��ɨ��ñ���з��Ͷ��ţ�
���ͳɹ��󣬽���¼ת�Ƶ�sms..sms_message_curmonth��
����һ����ǰ��ת�Ƶ���ʷ��sms_history..sms_message��

���ţ�
[�ɵ�]sms..sms_message_zy_ym ��ʱ����ת�Ƶ�[SMS].[dbo].[sms_message_yx]
[SMS].[dbo].[sms_message_yx] --������ת����Ӫ��ɨ��ñ���з��Ͷ���

�����ڡ� ֱ�ӷŵ������� [sms_message_yx]  status=10
 insert into sms..sms_message_yx(recMObile,Status,content,SendTime,Kid, Cid,WriteTime, sender,recuserid)        
    select '13632432093',10,'��������ͨ��:'+ convert(varchar(21),getdate(),120) ,getdate(),20675,118993,getdate(),0,0    
    
���ͳɹ��󣬽���¼ת�Ƶ�sms..sms_message_yx_temp--���ţ�ȫ����


--���ͺ�ģ���ʷ��
sms..sms_message_curmonth --����       
sms..sms_message_yx_temp  --���ţ�ȫ����
sms_history..sms_message --������ʷ 

Ŀǰ��
1)�����쳣���ţ����������ţ����������䷢�͡�������ʱ��mcapp..sms_mc��[SMS].[dbo].[sms_message]
2)�׶�԰��վע����֤����ţ��������ŷ��͡�������ʱ��basicdata..verify_sms ��[SMS].[dbo].[sms_message_yx] 
select top 10 * from mcapp..sms_mc 
where sendtime>='2014-04-08' and
kid = 22120 order by sendtime desc

��ʦ����   8,10,11   (Ҫ����������ʦ)
select * from mcapp..sms_man_kid where kid = 12511

select top 100 * from mcapp..sms_mc 
where kid = 21398 and 
sendtime>='2014-04-02' and
--content like '%�ҳ�����%' and 
--content like '%Уҽ%' and
--recuserid = 626286 and
recmobile = '15167910635'

--2)���sendtime��ֵ����status�ǲ��ǵ���11
select * from sms..sms_message_yx_temp where kid=21398 and sendtime>='2014-04-02' and recmobile='13786123167'
select *from sms..sms_message_yx_temp where kd

--3)����status=11���ÿͷ���ѯ �Ƿ��з��ͳ��֡�
select c.cardno,a7,uc.mobile,a.* from ossapp..addservice a 
left join mcapp..cardinfo c on a.[uid]=c.userid
left join BasicData..User_Child uc on c.userid=uc.userid
where  a.kid =20154 
and a.[uid]=636327
and c.cardno='1308019978'

 select * from applogs.dbo.EditLog
--԰������
������ţ���֢״�ŷ���
select top 1000 * from sms..sms_message_yx_temp where recmobile='15279019919' 
select top 1000 * from sms..sms_message_curmonth where recmobile='15279019919' 

 select *
   --update y set status=11
    from sms..[sms_message_yx] y  where  status=9
  select * from sms..sms_message_zy_ym   where  status=9 and writetime>='2016-03-30'
   
  sms..sms_message_yx_temp 
  
  select * from sms..sms_batch where taskid=581124
  
  select * from sms..sms_batch where sender=90529 and writetime>='2016-03-30' and smscontent='���죨3��31�գ�������԰��Ϊ��༶���׶��ı�ҵ�գ���С���Ѱ�ʱ��԰��û�����������Ҫ��٣���װ��Ь�Ӳ���Ҫ��лл��ϣ�' taskid=581124
  
  select * from sms..sms_batch where taskid=581124
  
  select * from sms..sms_message_zy_ym   where  status=13
  
   select * from sms..sms_message_zy_ym s where recmobile='13503028808' and writetime>='2016-03-30'
   
   select * from sms..sms_message_ym s where recmobile='13503028808' and writetime>='2016-03-30'