14979]���ϴ�ѧ�׶�԰ @л���� ���ҵ�һ�����԰2015-9-1��2016-1-1����֧������ϸ��лл




;with cet as(
select u.userid,u.cname �༶,u.name ����,uf.crttime �ɷ�ʱ��
 from payapp..user_fees uf
 inner join basicdata..[USER_child] u
  on uf.userid =u.userid 
  where u.kid=14979 and crttime>='2015-9-1' and crttime<='2016-1-1'
  --order by cname,u.name
 ),cet2 as(
select * from PayApp..sgs_pay_record r
where kid=14979 and status=1 and crtdate>='2015-8-1' and crtdate<='2016-1-20'
and exists(select * from PayApp..user_fees uf where
uf.kid=14979 and uf.userid=r.userid 
and uf.crttime>='2015-9-1' and uf.crttime<='2016-1-1')
and exists(select * from basicdata..[USER] u
  where r.userid =u.userid and kid=14979 )
 )
 select * from cet c where not exists(select * from cet2 c2 where c2.userid=c.userid)
  
select * from PayApp..sgs_pay_record where userid =1604573
    
select orderno,COUNT(orderno) from PayApp..sgs_pay_record 
where kid=14979 and crtdate>='2015-9-1' and crtdate<='2016-1-1'
group by kid,orderno
having COUNT(orderno)>1

--select userid,COUNT(userid) from PayApp..sgs_pay_record 
--where kid=14979 and crtdate>='2015-9-1' and crtdate<='2016-1-1' and status=1
--group by userid
--having COUNT(userid)>1

  
  select * from basicdata..[USER] u where userid in(610924,1435784,1580448,1580491,1580494,1580506,1580508,1601951)

select u.name ����,uf.crttime �ɷ�ʱ��,u.cname �༶,uf.*
 from payapp..user_fees uf
 inner join basicdata..[USER_child] u
  on uf.userid =u.userid 
  where u.kid=31717 and crttime>='2016-7-1' and crttime<='2016-11-1'
  order by cname,u.name


select u.username ����,u.crtdate �ɷ�ʱ��,u.tel �ֻ���,u.*
 from payapp..sgs_pay_record u
  where u.kid=31717 and crtdate>='2016-7-1' and crtdate<='2016-11-1'
   and status=1
---------------------------------------------------------------------


---------------------�ײ���Чʱ��ȷ��-------------------------

select * from PayApp..fees where kid= 32833
select * from PayApp..fees where fee_name='�׶����������' kid= 0

select * from PayApp..user_fees where fee_id=141
select * from PayApp..user_fees where fee_id=144
select * from PayApp..user_fees where fee_id=135


select * 
--update a set ltime='2017-03-01 00:00:00.000' 
 from ossapp..addservice a where kid= 32833 and a1=1201 and ID<=1100362 order by id
select *
--update a set ltime='2017-03-01 00:00:00.000' 
from ossapp..addservice_status_log a where kid= 32833 and a1=1201 and ID<=445411 and status=1 order by id

--��ͨ���ײ���Ч����2�����߶���2�����׶�԰
;with cet as(
select kid,ltime from ossapp..addservice a 
where paytime>='2016-04-01' and describe='��ͨ'
group by kid,ltime
--order by kid,ltime
)
select kid,COUNT(ltime) cnt,MAX(ltime) max_ltime,min(ltime) min_ltime
from cet 
group by kid
having COUNT(ltime)>1

select * from ossapp..addservice 
where kid=31689 and paytime>='2016-04-01' and describe='��ͨ'

29312 ̽���׶�԰  ��������ɷ�