--�ײͲ�ѯ
select * from mcapp..cardinfo where userid=216044
select * from basicdata..[leave_user_class] where userid=216044
select uc.userid,uc.kid,c.card,uc.name,uc.mobile from BasicData..User_Child uc
 left join mcapp..cardinfo c 
  on uc.userid=c.userid where uc.kid= 11061 and uc.userid =216044
select a7,* from ossapp..addservice where uid=216044
select CommonFun.dbo.fn_RoleGet(sendSet,1) ��԰,CommonFun.dbo.fn_RoleGet(sendSet,2) ��԰,
CommonFun.dbo.fn_RoleGet(sendSet,3) ��������,*  
from  mcapp..kindergarten where kid=11061


456134	1303000761  806  ���  СС���ϰ�
487923	1303000754  806  κ��ĭ  СС���ϰ�
216044	1308009518  806    ����     ��һ��

--�ײ����ã�����������ţ�
/*
update ossapp..addservice set a7=806,describe='��ͨ',ltime='2016-09-01 00:00:00.000' where uid =487923
update ossapp..addservice set a7=0 where uid =487923
update mcapp..kindergarten set sendSet=null where kid=11061
update basicdata..[user] set mobile=null where userid=487923
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleAdd(sendset,3) where kid=11061
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleDel(sendset,3) where kid=11061
*/

update basicdata..[User] set mobile='13632432093' where userid=216044
select *from mcapp..cardinfo where card ='1303000761'
update mcapp..cardinfo set userid=456134 where card='1303000761'
select * from basicdata..[User_Child]  where userid in (487923)
select *from mcapp..stu_mc_day where kid= 11061 and cdate>='2014-12-23'
select *from mcapp..stu_at_day where kid= 11061 and cdate>='2014-12-23'
select *from [CardApp].[dbo].[attendance_everymonth]   where userid in (487923) and year=2014 and month=9
select *from [CardApp].[dbo].[attendance_everymonth]   where userid in (487923) and year=2014 and month=9
kid 21770
--����һ��
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:00:00.000','37.90','2,8','2014-12-23 9:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 13:02:00.000','36.20','4','2014-12-23 13:25:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:04:00.000','36.30','','2014-12-23 9:20:00.000','001106100','01',0)
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:05:00.000','0.00','','2014-12-23 9:20:00.000','001106100','01',0)

select *from mcapp..LogInfo_ex where kid = 11061 and logtime>='2014-12-23'

--��������
--��һ��
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:00:00.000','0.00','9','2014-12-23 9:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:02:00.000','36.20','4','2014-12-23 9:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:04:00.000','36.30','2','2014-12-23 9:20:00.000','001106100','01',0)
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 8:05:00.000','36.5','','2014-12-23 9:20:00.000','001106100','01',0)
--�ڶ���
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 9:00:00.000','0.00','','2014-12-23 10:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 9:02:00.000','36.20','4','2014-12-23 10:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 9:04:00.000','36.30','10','2014-12-23 10:20:00.000','001106100','01',0)
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 9:05:00.000','0.00','','2014-12-23 10:20:00.000','001106100','01',0)

insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 9:06:00.000','36.70','4,5','2014-12-23 10:25:00.000','001106100','01',0 )
 
sqlagentdb..init_stu_mc_day
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2014-12-23 7:02:00.000','0.00','','2014-12-23 7:20:00.000','001106100','01',0 )
 mcapp..stu_mc_Day

456134	1303000761  806  ���  СС���ϰ�
487923	1303000754  806  κ��ĭ  СС���ϰ�
216044	1308009518  806    ����     ��һ��

/*
���tw:37.90,zz:2,8,11����Ҫ����ƫ�ߡ��ҳ�����ȷ�ϣ�
κ��ĭtw:36.90,zz:11����Ҫ�ҳ�����ȷ�ϣ�
����tw:36.90,zz:11������������
*/
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,456134,'1303000761','2014-12-23 7:02:30.000','37.90','2,8,11','2014-12-23 7:21:00.000','001106100','01',0,'37.90','2,8,11','' )
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,487923,'1303000754','2014-12-23 7:03:11.000','36.90','11','2014-12-23 7:21:00.000','001106100','01',0,'36.90','11','' )
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,216044,'1308009518','2014-12-23 7:02:00.000','36.80','','2014-12-23 7:21:00.000','001106100','01',0,'36.80','','' )

/*
1)ȷ��
���tw:37.90,zz:2,8,11��ȷ��Ϊ����ƫ�ߣ����Ҽҳ����أ�
κ��ĭtw:36.90,zz:11��ȷ�ϼҳ����أ�

2)
���tw:37.90,zz:2,8,11��ȷ��Ϊ����ƫ�ߣ�δ���ҳ����أ�
κ��ĭtw:36.90,zz:11��ȷ�ϼҳ����أ�

3)
���tw:37.90,zz:2,8,11��ȷ��Ϊ�����������ҳ����أ�
κ��ĭtw:36.90,zz:11��ȷ�ϼҳ����أ�

4)
���tw:37.90,zz:2,8,11��ȷ��Ϊ����������δ���ҳ����أ�
κ��ĭtw:36.90,zz:11��ȷ�ϼҳ����أ�
*/


sqlagentdb..init_stu_mc_day
sqlagentdb..Move_stu_mc_day_raw_From_Temp


--��Ҫһ���쳣����Ҫ����ƫ��ȷ�ϣ�����������
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,456134,'1303000761','2014-12-23 7:02:30.000','36.70','2','2014-12-23 7:21:00.000','001106100','01',0,'36.70','2','' )
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,487923,'1303000754','2014-12-23 7:03:11.000','37.90','','2014-12-23 7:21:00.000','001106100','01',0,'37.90','','' )
insert into mcapp..stu_mc_day (checkdate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,sms_tw,sms_zz,commit_zz)
 values('2014-12-23',11061,216044,'1308009518','2014-12-23 7:02:00.000','36.80','','2014-12-23 7:21:00.000','001106100','01',0,'36.80','','' )


 update mcapp..stu_mc_day set commit_zz='1,2,8,11',ftype=2 where Card='1303000754' and adate>='2014-12-23'
 
 
 select * from mcapp..stu_mc_day where Card='1303000754' and ID=4245256 and adate>='2014-12-23'   --����վ��
 update mcapp..stu_mc_day set CheckDate='2015-11-28',cdate='2015-11-28 08:00:00.000',adate='2015-11-28 09:20:00.000',Status=0,ftype=0 where ID=4245256
 
 select * from mcapp..stu_mc_day where Card='1303000754' and CheckDate='2015-11-28'
 
 select * from mcapp..
 
select * 
--Delete 
from sqlagentdb.dbo.mc_day_raw_message Where senddate = CONVERT(Varchar(10), GETDATE(), 120) and kid=11061   

select* from mcapp.dbo.stu_in_out_time Where userid=487923
select * 
--delete 
from  mcapp..stu_mc_day_raw where adate>='2014-12-23' and kid =11061
select * 
--delete  
from  mcapp..stu_mc_day where adate>='2014-12-23' and kid =11061
select * 
-- delete 
from mcapp..sms_mc 
where sendtime>='2014-12-23 15:00' and kid =11061
select * 
-- delete 
from mcapp..push_mc 
where writetime>='2014-12-23 15:00' and kid =11061   select * from ossapp..users where bid>0
select * 
-- delete 
from sms..sms_message 
where sendtime>='2014-12-23' and kid =11061
select * 
-- delete 
from biglog..LogInfo_ex
where logtime>='2015-11-28' and kid =11061

select * 
-- delete 
from AppLogs..mc_log
where crtdate>='2015-11-28 17:00' and kid =11061

--select * from mcapp..cardinfo where userid=487923
--456134,487923,216044
-- insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
--values(11061,456134,'1303000761','2014-12-23 9:20:00.000','36.90','10','2014-12-23 17:24:00.000','001106100','01',0 )
--insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
--values(11061,487923,'1303000754','2014-12-23 9:20:00.000','36.90','','2014-12-23 18:20:00.000','001106100','01',0 )
--insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
--values(11061,216044,'1308009518','2014-12-23 18:10:00.000','36.90','2','2014-12-23 18:20:00.000','001106100','01',0)

--sqlagentdb..init_stu_mc_day

select * from mcapp..kindergarten where kid =11061

insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,456134,'1303000761','2014-12-23 7:10:00.000','36.90','8','2014-12-23 7:20:00.000','001106100','01',0,0 )
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,487923,'1303000754','2014-12-23 7:10:00.000','36.90','8,10','2014-12-23 8:20:00.000','001106100','01',0,0 )
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,216044,'1308009518','2014-12-23 8:10:00.000','36.90','2','2014-12-23 8:20:00.000','001106100','01',0,0 )

select * 
-- delete 
from mcapp..sms_mc 
where sendtime>='2014-12-23' and kid =11061
--select * 
delete from  mcapp..stu_mc_day_raw where adate>='2014-12-23' and kid =11061
delete from  mcapp..stu_mc_day where adate>='2014-12-23' and kid =11061

insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,456134,'1303000761','2014-12-23 7:10:00.000','36.90','2,8,9','2014-12-23 7:20:00.000','001106100','01',0,0 )
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,456134,'1303000761','2014-12-23 7:10:00.000','36.90','2,8,9','2014-12-23 12:20:00.000','001106100','01',0,0 )
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-12-23',11061,456134,'1303000761','2014-12-23 20:10:00.000','36.90','2,8,9','2014-12-23 20:20:00.000','001106100','01',0,0 )

--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-12-23' and
kid = 11061 
order by sendtime desc
--ɾ����������
delete from mcapp..stu_mc_day where kid = 11061 and adate>='2014-12-23'
delete from mcapp..sms_mc where  sendtime>='2014-12-23'  and kid = 11061


--insert into [ossapp].[dbo].[config_manage] ([appname],[configpath],[syn]) 
--  select '������������','D:\svnproject\smstimer\com.zgyey.smstimer\bin\Debug\���춨ʱ���Ͷ��ŷ���.exe.config',0
--update [ossapp].[dbo].[config_manage] set syn=1--, configpath='D:\svnproject\smstimer\com.zgyey.smstimer\config\kindergartencache.config'
--  where id=10

--select * from ossapp..config_manage 
--insert into ossapp..config_manage(appname,configpath,syn)
--select '������ţ���������','D:\svnproject\smstimer\com.zgyey.smstimer\config\kindergartencache.config',0

--update ossapp..config_manage set configpath = 'D:\svnproject\smstimer\com.zgyey.smstimer\config\kindergartencache.config',
--appname='������ţ���������' where id=10
--insert into ossapp..config_manage(appname,configpath,syn)
--select '������ţ��׶���Ϣ','D:\svnproject\smstimer\com.zgyey.smstimer\config\userinfocache.config',0

--insert into ossapp..config_manage(appname,configpath,syn)
--select '������ţ�Уҽ����','D:\svnproject\smstimer\com.zgyey.smstimer\config\sms_man_kidcache.config',0

--insert into ossapp..config_manage(appname,configpath,syn)
--select '������ţ�������ʦ����','D:\svnproject\smstimer\com.zgyey.smstimer\config\teacherinfocache.config',0


sqlagentdb
֢״���	֢״����
1	����ƫ�� 
2	  ���� 
3	 ��������  
4	 ������   
5	Ƥ��   
6	��к 
7	���۲� 
8	 �ص�۲� 
9	��ָ�� 
10	��ҩ����  
11	�ҳ�����   