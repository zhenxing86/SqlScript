Select b.name From Syscomments a, sysobjects b Where TEXT Like '%sms_message_zy_ym%' and a.id = b.id

kmapp..Tri_subscription on subscription
[push_group_addTosingle]  --Ԥ��ͼ����Ϣ
[push_group_addbymtid]  --Ⱥ��ͼ��
push_group_add_bycontent  --Ⱥ���ı�����Ƶ

select *from [push_content] where publicid=40 
select *from [material] where publicid=40 
from push_message_history where publicid=40 

select * 
--delete
 from kmapp..demo_kindergarten where kid = 24082
insert into kmapp..demo_kindergarten (kid) values( 24082)

--û�ù�ʱ������, ���������ʱ��������Ϣ

--���ŷ���
SELECT TOP 1000 *  FROM [logdata].[dbo].[hx_log]

--������־ 
SELECT TOP 1000 *  FROM [kmapp].[dbo].[push_log]

--ʱ������¼��־
select * from kmapp..login_record  where userid = 1458893

18925265135    '18922209598ls'

--����ע����־
select * from kmapp..hxreglog where userid = 1592365

--������Ϣ����
select * from logdata.dbo.hx_log

--���ں���Ϣ����
select * from  kmapp..push_message_history where userid = 1597286

select * from kmapp.dbo.push_hx where sourceid =10379
select * from kmapp.dbo.push_hx_user where phid=20917 and userid=1525008
select * from kmapp.dbo.push_log where userid=1525008 order by intime desc  --���� ���ͼ�¼��
select * from LogData.dbo.hx_log where touid=919578 order by dotime desc  --�������ͼ�¼��
select * from kmapp..user_relationship where userid=1525008


--������־��ѯ
select phid into #phid from kmapp.dbo.push_hx_history where userid=0 and title='����ף������'
select * from kmapp.dbo.push_hx_user_history p
 inner join #phid h on p.phid=h.phid
 where p.userid =33653  --������
 
Select * From LogData.dbo.hx_log Where phid = 29047 and touid In (34686, 33653)


select * from  kmapp..push_message_history where userid =33653


ID:29486  �и��ҳ���9�·ݿ�ʼ������һֱû�յ�����ʦͨ��APP���͵İ༶֪ͨ���鷳��һ����ʲôԭ�򡣼ҳ��˺��ǣ�18925265135����֪ͨ����ʦ�˺��ǣ�13642495465
select * from sms..and_notice_batch where sender =1510018 and sendtime>='2015-10-20'
select * from sms..and_notice_detial where sender =1510018 and recuserid=1525008 and sendtime>='2015-10-20'


select * from 
[dbo].[push_content] c        
   inner join  dbo.publics p        
    on c.publicid=p.publicid and p.deletetag =1 and c.deletetag =1        
   left join material m       
    on c.mtid=m.mtid    
    
select * from [push_content] where publicid=3 and adddate>='2015-11-19'
select * from push_message_history where publicid=3 and adddate>='2015-11-19'

--select * from BasicData..[user] where kid=23967 and account ='cjjz'
--select * from BasicData..[user] where kid=23967 and usertype>
select * from BasicData..[user] where account ='18925265135'

18028633611jz 1458901
18028633611ls 1458895
18028633611yz 1458878






--------------------------------
(����ע����ʱ�����Ļ�Ծ�û�)
--action:63
--���⣺�汾����֪ͨ
--���ݣ�ʱ�������°汾��������
Select u.userid, b.relationship      
  Into #hx_user
  --select COUNT(1)    
  From BasicData..[user] u,kmapp.dbo.user_relationship b                  
  Where u.userid=b.userid and u.deletetag=1
   and b.hxregtag = 1 and b.userid in( 862909) 
   --and exists(select 1 from kmapp.dbo.login_record l where adddate>='2015-08-10' and u.userid=l.userid)   
 
--��������                  
Declare @phid bigint               
Insert Into kmapp.dbo.push_hx(userid, title, content, url, status, adddate, action, sendtype, sourceid)                    
  Select 0, '�汾����֪ͨ', 'ʱ�������°汾��������',                   
        'http://pmv.zgyey.com/TimetreeMsg/Content?cid=169',                   
        0, getdate(), 63, 0, 0                  
                  
Select @phid = scope_identity()                    
                    
Insert Into kmapp.dbo.push_hx_user(phid, userid, relationship)                    
  Select Distinct @phid, userid, relationship                    
    From #hx_user    
    
drop table #hx_user
--select count( userid) from kmapp.dbo.user_relationship b where hxstatus = 1

select COUNT(1) from kmapp..login_record where adddate>'2015-05-10'
select COUNT(1) from kmapp..login_record where adddate>'2015-05-10'


(����ע����ʱ�����Ļ�Ծ�û�������ͨ�˳����԰��)
--���⣺����������Ϣ
--���ݣ���԰����һ���ţ�
--action:64

Select u.userid, b.relationship      
  Into #hx_user
  --select COUNT(1)    
  From BasicData..[app_user] u,kmapp.dbo.user_relationship b                  
  Where u.userid=b.userid and u.deletetag=1 and u.role=0
   and b.hxregtag = 1 --and b.userid in( 1458878) 
   and exists(select 1 from kmapp.dbo.login_record l where adddate>='2015-08-10' and u.userid=l.userid) 
   and exists(select 1 from BlogApp..[permissionsetting] p where p.kid =u.kid and p.ptype=90)   

    
--��������                  
Declare @phid bigint               
Insert Into kmapp.dbo.push_hx(userid, title, content, url, status, adddate, action, sendtype, sourceid)                    
  Select 0, '����������Ϣ', '��԰����һ���ţ�',                   
        'http://pmv.zgyey.com/TimetreeMsg/Content?cid=168',                   
        0, getdate(), 64, 0, 0                  
                    
Select @phid = scope_identity()                    
                    
Insert Into kmapp.dbo.push_hx_user(phid, userid, relationship)                    
  Select Distinct @phid, userid, relationship                    
    From #hx_user    
    
drop table #hx_user



(����ע����ʱ�����Ļ�Ծ�û�������ͨ�˳���ͽ�������ļҳ�)
----�ҳ�action=64
--���⣺����������Ϣ
--���ݣ����ҳ���һ���ţ�
--ͼƬ��http://img2.yeyimg.com/TimeTree/20150909/055dc109-3b59-49a3-89b1-cbffbe510642_small.jpg
--url:http://pmv.zgyey.com/TimetreeMsg/Content?cid=107
  

Select u.userid, b.relationship      
  Into #hx_user
  --select COUNT(1)    
  From BasicData..[user] u,kmapp.dbo.user_relationship b                  
  Where u.userid=b.userid and u.deletetag=1 and u.usertype=0
   and b.hxregtag = 1 --and b.userid in( 1458901) 
   and exists(select 1 from kmapp.dbo.login_record l where adddate>='2015-08-10' and u.userid=l.userid) 
   and exists(select 1 from BlogApp..[permissionsetting] p where p.kid =u.kid and p.ptype=90)   
   and exists(select 1 from ossapp..addservice a where a.uid =u.userid and a.describe='��ͨ' and a9>0)
   and u.kid in(28277,12511)

--select * from basicdata..[user] where userid=1458901  
--��������                  
Declare @phid bigint               
Insert Into kmapp.dbo.push_hx(userid, title, content, url, status, adddate, action, sendtype, sourceid)                    
  Select 0, '����������Ϣ', '���ҳ���һ���ţ�',                   
        'http://pmv.zgyey.com/TimetreeMsg/Content?cid=107',                   
        0, getdate(), 64, 0, 0                  
                    
Select @phid = scope_identity()                    
                    
Insert Into kmapp.dbo.push_hx_user(phid, userid, relationship)                    
  Select Distinct @phid, userid, relationship                    
    From #hx_user    
    
drop table #hx_user
--select COUNT(1) from kmapp.dbo.push_hx where action=64
--select COUNT(1) from kmapp.dbo.user_sys_message where action=65

--����
--Insert Into kmapp.dbo.user_sys_message(userid, msgtype, content, status, adddate, action, title, url)    
  --Select userid, 5, @name + '���ˡ�' + @smstitle + '��', 0, GETDATE(), 62, @smstitle,     
  --       'http://srv.zgyey.com/sms/SendMessage/NoticeView/?hxuid={hxuid}&client={client}&kid={kid}&uid={uid}&client={client}&appver={appver}&key={key}'    
  --  From #receiver    
  --  Where userid not IN (Select userid From #hx_user)  
  
  
  
--[����] �������͡�
declare @userid int
declare @name varchar(20)
set @userid = 1458901   
set @name = (select name from BasicData..[user] where userid = @userid)

Insert Into kmapp..push_message(userid, publicid, pcid, msgtype, status, action, pctype, title, content, url, file_url,typeid)
 select @userid,18,0,5,0,1,0,'�׶�������������д����','�װ���' +@name+'�ҳ����ã�'+char(10) + char(13) + char(13) + char(13) + char(13)+'�������������׶���������Ԥ����������Ҫ;��֮һ�����ǽ����ݺ��ӵ������������ֵ���ʷ��¼����ʱ�������������粢Ϊ���ṩԤ�����ֵ�ָ�����顣'+char(10) + char(13) + char(13) + char(13) + char(13)+
'������ʱ��д�׶������������ʷ��¼��лл�������ǹ�����֧�֡�',
           'http://srv.zgyey.com/jkzx/Vaccine/Index?kid=0&uid='+cast(@userid as varchar(14))+'&key=dfh_eoi_439','',3 
           
Insert Into kmapp..push_message(userid, publicid, pcid, msgtype, status, action, pctype, title, content, url, file_url,typeid)
 select @userid,18,0,5,0,1,0,'�׶�����ʷ���Ŵ���ʷ��д����','�װ���' +@name+'�ҳ����ã�'+char(10) + char(13) + char(13) + char(13) + char(13)+'Ϊ���ú���ӵ�н��������壬ÿһ��ϸ�����Ƕ����ܺ��ԣ�������Ҫ���׶��Ľ���������㹻���˽����֪������Ϊ���Ľ�����չ�ṩ���õİ�����'+char(10) + char(13) + char(13) + char(13) + char(13)+
'������ʱ��д�׶�����ʷ���Ŵ���ʷ���׶��������ϣ������ǵı���ҽ���ʹ�����ʦ�����ĺ����и�ϸ�µ��˽⣬���õ��չ����ĺ��ӡ�',
           'http://srv.zgyey.com/jkzx/HealthData/Index?kid=0&uid='+cast(@userid as varchar(14))+'&key=dfh_eoi_439','',3  
           
           
--[����] �׶����������
select *from BasicData..[USER] where account='18028633611jz' and deletetag=1

create table #k(userid int)
insert into #k(userid)
select distinct u.userid 
  from BasicData..[user] u
   left join BlogApp..[permissionsetting] p
       on u.kid = p.kid 
 where  p.ptype=90 
     and exists(select 1 from kmapp.dbo.login_record l where adddate>='2015-08-10' and u.userid=l.userid)
     and exists(select 1 from ossapp..addservice a where a.uid =u.userid and a.describe='��ͨ' and a9>0)
     and u.usertype = 0
     and u.deletetag  = 1
      

--Insert Into kmapp..push_message(userid, publicid, pcid, msgtype, status, action, pctype, title, content, url, file_url,typeid)
 select userid,18,0,4,0,1,0,'�׶����������','Ϊʲô���������׶�԰������������������Ӧ����ô�������кܶ�ܶ���ڱ������������֪ʶ��С���ߡ���Щ�������Ƕ�֪���𣿴𰸾���ʱ���������������������ưɣ�',
           'http://sgs.pay.zgyey.com/pay/index?kid={kid}&client={client}&appver={appver}&uid={uid}','http://pmv.zgyey.com/html/jkfw/cover.jpg',3     
    from #k 
