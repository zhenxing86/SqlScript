������ŷ��Ͳ��Խű�

---------------�����쳣���ŷ���  �����쳣����-----------------
--��ͨ�ײͣ�����������ţ�
update ossapp..addservice set a7=806,describe='��ͨ',pname='�ײ�',vippaystate=1 where uid =653612
--����������ʦ
if not exists( select 1 from mcapp..sms_man_kid 
 where userid = 653605 and cid=55906 and kid=12511 and roletype=3
)
insert into mcapp..sms_man_kid(userid,kid,cid,roletype)
select 653605,12511,55906,3

--���볿������
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-05-12',12511,653612,'1303001701','2014-05-12 08:10:00.000','36.90','2,8,9','2014-05-12 10:00:00.000','001251100','03',0,0 )
--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-05-12' and
kid = 12511 
order by sendtime desc

--ɾ����������
delete from mcapp..stu_mc_day where kid = 12511 and adate>='2014-05-12'
delete from mcapp..sms_mc where  sendtime>='2014-05-12'  and kid = 12511

---------------�����쳣���ŷ���(ˢ��ʱ�����ϴ�ʱ��ļ��������180����) �����Ͷ���-----------------
--���볿������
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-05-12',12511,653612,'1303001701','2014-05-12 7:10:00.000','36.90','2,8,9','2014-05-12 15:20:00.000','001251100','03',0,0 )
--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-05-12' and
kid = 12511 
order by sendtime desc

--ɾ����������
delete from mcapp..stu_mc_day where kid = 12511 and adate>='2014-05-12'
delete from mcapp..sms_mc where  sendtime>='2014-05-12'  and kid = 12511

---------------�����쳣���ŷ���(��ǰʱ�䲻�ڷ��ͼҳ�����ʱ�����) �����Ͷ���-----------------
--���볿������
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-05-12',12511,653612,'1303001701','2014-05-12 19:10:00.000','36.90','','2014-05-12 19:20:00.000','001251100','03',0,0 )
--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-05-12' and
kid = 12511 
order by sendtime desc

--ɾ����������
delete from mcapp..stu_mc_day where kid = 12511 and adate>='2014-05-12'
delete from mcapp..sms_mc where  sendtime>='2014-05-12'  and kid = 12511

-----------------�����������ŷ��� ������������--------------------------


--������Ҫ���ͳ����������ŵ��׶�԰
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleAdd(sendset,3)
 where kid = 12511
if @@ROWCOUNT<=0
insert into mcapp..kindergarten (kid,kname,sendSet)
select 12511,'������Ĵָ�׶�԰',3

--���볿������
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-05-12',12511,653612,'1303001701','2014-05-12 08:10:00.000','36.90','','2014-05-12 11:00:00.000','001251100','03',0,0 )
--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-05-12' and
kid = 12511 
order by sendtime desc

--ɾ����������
delete from mcapp..stu_mc_day where kid = 12511 and adate>='2014-05-12'
delete from mcapp..sms_mc where  sendtime>='2014-05-12'  and kid = 12511


-----------------�����������ŷ��� ��������������--------------------------
--ȡ��������Ҫ���ͳ����������ŵ��׶�԰
update mcapp..kindergarten set sendSet=CommonFun.dbo.fn_RoleDel(sendset,3)
 where kid = 12511
 
 --���볿������
insert into mcapp..stu_mc_day (CheckDate,kid,stuid,card,cdate,tw,zz,adate,devid,gunid,Status,ftype)
values('2014-05-12',12511,653612,'1303001701','2014-05-12 08:10:00.000','36.90','','2014-05-12 11:00:00.000','001251100','03',0,0 )
--��ѯ�������
select * from mcapp..sms_mc 
where sendtime>='2014-05-12' and
kid = 12511 
order by sendtime desc

--ɾ����������
delete from mcapp..stu_mc_day where kid = 12511 and adate>='2014-05-12'
delete from mcapp..sms_mc where  sendtime>='2014-05-12'  and kid = 12511