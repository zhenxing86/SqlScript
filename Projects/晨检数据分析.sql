www.zgyey.com/hmcsetup.rar  ����ɼ���

mcapp..init_attendance_everymonth ����洢����5����ִ��һ��  ���ɿ��ڱ���
cardapp..[class_attendance_everymonth_GetChildList] 122375,2015,10  
���⣺4037 ����׶�԰ʹ�õ��Ǿɰ��2��������� ��Щ��ʦ����1228311��1228313��12328312��1228283��1228280��2441938��2788695��11975247����û�п��ڼ�¼��
ԭ��stu_mc_day_raw �����status=0�����ݶ�û�н� tea_at_day

ԭ�� Select * From cardapp..attendancetimeset Where time4 like '%��%'  ����ȫ�ǵĶ��š�
mcapp.dbo.tea_at_month  
mcapp.dbo.stu_at_month
--���ڱ���������Ǵ�tea_at_month��stu_at_month���ɵġ�



--��ѯû��
select distinct k.kid,isnull(k.kname,bk.kname) ,u.name ,s.kid,bk.*  from mcapp..sms_mc s
 inner join mcapp..kindergarten k on k.kid =s.kid
 inner join ossapp..kinbaseinfo bk on bk.kid = s.kid
 inner join ossapp..users u on u.id = bk.developer
 where CommonFun.dbo.fn_RoleGet(sendset,3)=0 and s.writetime>='2015-09-21' and s.smstype=12

select  * from BasicData..kindergarten where kid =26914
select  * from mcapp..kindergarten where kid =26914
1)û�п��ŵ�ѧ��
185-178   7
select * from BasicData..User_Child uc
left join mcapp..cardinfo ci on uc.userid=ci.userid
where uc.kid =14496 and 
--uc.cid=79184 and  
ci.userid is null 

select * from mcapp..cardinfo where userid =754877 and card='1310013374'
select * from BasicData..User_Child where name='���' and kid =11407 and userid=754874
select * from mcapp..stu_mc_day_raw where kid =20850 and cdate>='2014-5-12'  and cdate<='2014-04-30' order by id  --and card='1310013376' order by card 
select * from mcapp..stu_mc_day where kid =11407 and cdate>='2014-04-29' and cdate<='2014-04-30' --and card='1310013376'

�����������׶�԰ 

1-2) û�а��û���ˢ������ stuinfo_update
select * from mcapp..stu_mc_day_raw draw
left join mcapp..cardinfo ci on draw.card =ci.cardno
where draw.kid =14496 and draw.cdate>='2014-03-31'
and ci.userid is null

select * from mcapp..stu_mc_day_raw where kid =20145 and adate>='2014-05-16' order by id 
select * from mcapp..stu_mc_day where kid =20145 and cdate>='2014-05-16'

2)����ˢ����С����
select * from BasicData..User_Child uc
left join mcapp..stu_mc_day smd on uc.userid=smd.stuid
where uc.kid =14496 and 
uc.cid=79184 
and smd.cdate>='2014-03-28'

3)ˢ��ʧ�ܵ�С����
select * 
from BasicData..User_Child uc
where kid =14496 and 
--cid=79184 and 
not exists(
	select * from mcapp..stu_mc_day smd where uc.userid=smd.stuid
	 and smd.cdate>='2014-03-31'
)

4)��� ˢ��ʧ�ܵ�С����,�Ƿ����û��ˢ��������û���ϴ�����վ��̨(����ԭʼ�� mcapp..stu_mc_day_raw���Ƿ�û�м�¼)
;with cet as
(
	select * 
		from BasicData..User_Child uc
		where kid =14496 and 
		--cid=79184 and 
		not exists(
			select * from mcapp..stu_mc_day smd where uc.userid=smd.stuid
			 and smd.cdate>='2014-03-31'
		)
)

select * from mcapp..stu_mc_day_raw draw
where kid =14496 and cdate>='2014-03-31' and
 exists(
  select * from mcapp..cardinfo ci
   inner join cet on ci.userid=cet.userid
   where draw.card = ci.card
   )
   
4-2)��� ĳ��ˢ��ʧ�ܵ�С����, ��ǰ�Ƿ�ˢ������ 
;with cet as
(
	select * 
		from BasicData..User_Child uc
		where kid =14496 and 
		--cid=79184 and 
		not exists(
			select * from mcapp..stu_mc_day smd where uc.userid=smd.stuid
			 and smd.cdate>='2014-03-31'
		)
)

select * from mcapp..stu_mc_day_raw draw
where kid =14496 and cdate>='2014-03-24' and cdate<='2014-03-25' and  
 exists(
  select * from mcapp..cardinfo ci
   inner join cet on ci.userid=cet.userid
   where draw.card = ci.card
   )

--������4�������Բ�� ��ЩС����û�� ��¼���쵽stu_mc_day_raw

--5)ͳ��ֻ���²�ˢ�������ݡ�
select * from mcapp..stu_mc_day_raw
where kid =14496 and cdate>='2013-12-31' and card='1111111111'

--6)��ѯĳ���Ƿ����ϴ� ��ǰ�ĳ�������
select *  from mcapp..stu_mc_day_raw draw
where kid =14496 and adate>='2014-03-31' and adate<='2014-04-01'
order by cdate desc

--7) 





select * from mcapp..cardinfo where userid =754877 and card='1310013374'
select * from BasicData..User_Child where name='���' and kid =11407 and userid=754874
select * from mcapp..stu_mc_day_raw where kid =11407 and cdate>='2014-04-29'  and cdate<='2014-04-30' order by id  --and card='1310013376' order by card 
select * from mcapp..stu_mc_day where kid =11407 and cdate>='2014-04-29' and cdate<='2014-04-30' --and card='1310013376'

select COUNT(1) from mcapp..cardinfo where usest=0 and openCardDate is null

select*from kmapp..user_message order by msgid desc 
select*from kmapp..push_message order by  pmid desc 



