--�ײ����ã�����������ţ�
/*
update ossapp..addservice set a7=806,describe='��ͨ',ltime='2016-09-01 00:00:00.000' where uid =487923
update ossapp..addservice set a7=0 where uid =487923
update mcapp..kindergarten set sendSet=null where kid=11061
update basicdata..[user] set mobile=null where userid=487923
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleAdd(sendset,4) where kid=11061
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleDel(sendset,4) where kid=11061
*/
--'1307009318','1303000754','1308009518'
456134	1307009318  806  ���  СС���ϰ�
487923	1303000754  806  κ��ĭ  СС���ϰ�
216044	1308009518  806    ����     ��һ��

select *from mcapp..cardinfo where kid=11061 and usest<>1
update basicdata..[User] set mobile='13632432093' where userid in (487923,456134,216044)
select *from mcapp..cardinfo where card ='1307009318'
update mcapp..cardinfo set userid=456134,usest=1 where card='1307009318'
select * from basicdata..[User_Child]  where userid in (487923,456134,216044)
select * from basicdata..[leave_user_class] where userid=216044
select uc.userid,uc.kid,c.card,uc.name,uc.mobile from BasicData..User_Child uc
 left join mcapp..cardinfo c 
  on uc.userid=c.userid where uc.kid= 11061 and uc.userid in (487923,456134,216044)
select a7,* from ossapp..addservice where uid in (487923,456134,216044)
select CommonFun.dbo.fn_RoleGet(sendSet,1) ��԰,CommonFun.dbo.fn_RoleGet(sendSet,2) ��԰,
CommonFun.dbo.fn_RoleGet(sendSet,3) ��������,CommonFun.dbo.fn_RoleGet(sendSet,4) ʱ��������,CommonFun.dbo.fn_RoleGet(sendSet,5) ƽ̨���ŷ���,*  
from  mcapp..kindergarten where kid=11061

select *from [CardApp].[dbo].[attendance_everymonth]   where userid in (487923) and year=2014 and month=9


456134	1307009318  806  ���  СС���ϰ�
487923	1303000754  806  κ��ĭ  СС���ϰ�
216044	1308009518  806    ����     ��һ��

/*
���tw:37.90,zz:2,8,11����Ҫ����ƫ�ߡ��ҳ�����ȷ�ϣ�
κ��ĭtw:36.90,zz:11����Ҫ�ҳ�����ȷ�ϣ�
����tw:36.30,zz:11������������
*/
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,487923,'1303000754','2016-06-13 8:00:00.000','37.90','2,8,11','2016-06-13 9:20:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,456134,'1307009318','2016-06-13 13:02:00.000','36.90','11','2016-06-13 13:25:00.000','001106100','01',0 )
insert into mcapp..stu_mc_day_raw (kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status)
 values(11061,216044,'1308009518','2016-06-13 8:04:00.000','36.30','11','2016-06-13 9:20:00.000','001106100','01',0)
 
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
--update mcapp..stu_mc_day set commit_zz='1,2,8,11',ftype=2 where Card='1303000754' and adate>='2016-06-13'
select * 
--Delete 
from sqlagentdb.dbo.mc_day_raw_message Where senddate = CONVERT(Varchar(10), GETDATE(), 120) and kid=11061   

select* from mcapp.dbo.stu_in_out_time Where userid=487923
select * 
--delete 
from  mcapp..stu_mc_day_raw where adate>='2016-06-13' and kid =11061 and card in('1307009318','1303000754','1308009518')
select * 
--delete  
from  mcapp..stu_mc_day where adate>='2016-06-13' and kid =11061 and card in('1307009318','1303000754','1308009518')
select * 
-- delete   stu_mc_day_highTw_GetModel
from mcapp..sms_mc_test 
where sendtime>='2016-06-13 15:00' and kid =11061
select * 
-- delete 
from mcapp..push_mc_test 
where writetime>='2016-06-13 15:00' and kid =11061   
select * 
-- delete 
from sms..sms_message 
where sendtime>='2016-06-13' and kid =11061
select * 
-- delete 
from mcapp..LogInfo_ex
where logtime>='2016-06-13 17:40' and kid =11061


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