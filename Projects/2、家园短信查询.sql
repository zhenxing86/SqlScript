use sms
go

/*  2018-01-01�𣬲���ʹ��������ţ�ֻ�������ź����ģ����ĵĶ���  */
----SMS..upyun_message_getlist_by_mobile '13632432093' ������Ϣ���ͼ�¼----

SELECT recuserid,recmobile,content,sendtime,status,writetime         
   FROM sms..sms_message_curmonth --����(����)
   --where taskid >=475098 and taskid<=475107
   where taskid >=475139 and taskid<=475142
       
  SELECT recuserid,recmobile,content,sendtime,status,writetime         
   FROM sms..sms_message_yx_temp  --���ţ�ȫ����
   where taskid =475098 
   
  SELECT recuserid,recmobile,content,sendtime,status,writetime         
   FROM sms_history..sms_message --������ʷ
    where taskid =475098 
    
  select userid,mobile,vars content,writetime,* from sms..sms_message_upyun where template_id=837 --����
  select * from sms..sms_message_upyun_history --������ʷ
    
--��Ϣ
select *from sms_batch sb where sender=883473 and kid=23713 and sb.sendtime >= '2015-09-07'
  and sb.sendtime < '2015-09-10'

--��Ϣ 
select *from dbo.and_notice_batch sb where sender=883473 and kid=23713 and sb.sendtime >= '2015-09-07'
  and sb.sendtime < '2015-09-10'
               
--��ȫ԰���͵��׶�԰��ɾ����VIP��С����                                      
select COUNT(1)  from KWebCMS..site_config where isvipcontrol=1 and siteid=2367
 
------------------���¼ҳ����ż�¼------------------------------
--1) ����
/*
sms..rep_CurrentMonth_SMS_content ����
--sendtype 0:��С���� 1:����ʦ,2:���꼶,3:���༶,4:������,5:��ְλ
*/
--select u.name, sb.smscontent, sb.sendtime, sum(sb.Sendusercount) Sendusercount,SUM(sb.sendsmscount) sendsmscount, sb.sendtype, MIN(sb.taskid) taskid,sb.appsend
select u.name ������, sb.smscontent ��������, sb.sendtime ����ʱ��, sum(sb.Sendusercount) ��������,SUM(sb.sendsmscount) ��������, 
case sb.sendtype when 0 then '��С����' when 1 then '����ʦ' when 2 then '���꼶' when 3 then '���༶' when 4 then '������' when 5 then '��ְλ' end ���Ͷ���        
   from sms_batch sb      
     inner join BasicData..[user] u      
     on sb.sender = u.userid      
   where sb.kid = 4246  and sb.kid=u.kid    
     and sb.sendtime >= '2018-05-01'
     and sb.sendtime < '2018-06-01' 
     and CASE WHEN GETDATE() > sb.sendtime THEN 0 ELSE 1 end = 0    
     and sb.cid <> 0      
GROUP BY u.name, sb.smscontent, sb.sendtime, sb.sendtype,sb.appsend 

--2����ϸ
;with cet as(    
  select taskid,recuserid,recmobile,content,sendtime from sms..sms_message_yx_temp where kid=4246 and sendtime>='2018-05-01' and sendtime < '2018-06-01'  
)  
SELECT u.name as username, sm.recmobile,sm.content,sm.sendtime    
 from cet sm    
  inner join BasicData..[user] u     
   on sm.recuserid = u.userid and u.usertype=0 
       
----------------������ʦ���ż�¼--------------------------
-- 1������
--select u.name, sb.smscontent, sb.sendtime, sb.Sendusercount,sb.sendsmscount, sb.sendtype, sb.taskid,sb.appsend
select u.name ������, sb.smscontent ��������, sb.sendtime ����ʱ��, sb.Sendusercount ��������,sb.sendsmscount ��������, 
case sb.sendtype when 0 then '��С����' when 1 then '����ʦ' when 2 then '���꼶' when 3 then '���༶' when 4 then '������' when 5 then '��ְλ' end ���Ͷ���      
 from sms..sms_batch sb      
   inner join BasicData..[user] u      
   on sb.sender = u.userid      
 where sb.kid = 4246 and sb.kid=u.kid       
     and sb.sendtime >= '2018-05-01'
     and sb.sendtime < '2018-06-01'  
   and CASE WHEN GETDATE() > sb.sendtime THEN 0 ELSE 1 end = 0      
   and sb.cid = 0
   
--2����ϸ
select sb.cid, c.cname, COUNT(1) sendnum, SUM(Case When sb.sendsmscount > sb.Sendusercount Then sb.sendsmscount End) as LongSMS,   
   SUM(Case When sb.sendsmscount <= sb.Sendusercount Then sb.Sendusercount End) as ShortSMS, SUM(sb.sendsmscount) paynum    
from sms..sms_batch sb  
 inner join BasicData.dbo.class c  
  on sb.cid = c.cid  
where sb.sendtime >= '2018-05-01' 
 AND sb.sendtime < '2018-06-01' 
 and sb.kid = 4246  
GROUP BY sb.cid, c.cname  


;with cet as(  
  select taskid,recuserid,recmobile,content,sendtime from sms..sms_message_yx_temp where kid=4246 and sendtime>='2018-05-01' and sendtime < '2018-06-01'  
)  
SELECT u.name as username, sm.recmobile,sm.content,sm.sendtime    
 from cet sm    
  inner join BasicData..[user] u     
   on sm.recuserid = u.userid and u.usertype>0
   
