


--��־�̷꣬��ƽ�������궼��������

--������ 2016/12/29 17:58:28
--Ŀǰ�ڽ�԰ �鷳˳�㽫����λҲ������ȥ��

--������ 2016/12/29 17:59:13
--������������ʦ ûȨ�޵�

select * from basicdata..[user] where kid=20850 and name in('��־��','̷��ƽ','������')

select * from basicdata..department u where kid=18699





select *
--update u set kid=20850
 from basicdata..[USER] u where userid=725593

select * from basicdata..department u where kid=18699
select *
--update t set did=79576
 from basicdata..teacher t where userid=725588
 
select * from basicdata..[USER] u where kid=18699 and name in('������','���÷�','����ӡ','�¾շ�')
select * from basicdata..[USER] u where  name ='������'

select * from kmapp..km_user u where kid=20850 and userid in(725600,725593,1557174)
select * from basicdata..[user] u where userid in(725600,725593,1557174)
select * from basicdata..[user] u where userid in(721289,721301,715729)
select * from basicdata..[user_class] uc where userid in(721289,721301,715729)

--18699  �����������С���Ѻ���λ��ʦ ���÷ҡ�����ӡ���¾շ�
--ת�Ƶ�20850 �Ĵ���࣬���Ϳ�һ��ת�ƹ�ȥ��

select c.EnrolNum,c.card,c.cardno,c.EnrolNum,ci.card,ci.cardno,ci.EnrolNum,ci.userid,ci.usest
--update c set kid=20850
  from mcapp..cardinfo c
   inner join BasicData..[user_child] u on c.userid=u.userid and c.kid=18699
   inner join mcapp..cardinfo ci on c.EnrolNum=ci.EnrolNum and ci.kid=20850
   where u.cid=87506
   --and exists(select 1 from mcapp..cardinfo ci where c.EnrolNum=ci.EnrolNum and ci.kid=20850)
   order by c.EnrolNum
   
--��1���� 18699�����Ŀ����·��������EnrolNum
--1) ����Щ��ת�Ƶ� kid=11,EnrolNum=null
select c.*
--update c set kid= 11,EnrolNum=null
	from mcapp..cardinfo c
	 inner join BasicData..[user_child] u on c.userid=u.userid  
	WHERE CardType = 2 and c.kid=18699 and u.cid=87506 

--2)����Щ��ת�Ƶ� kid=20850,�����·���EnrolNum
;with cet as
(
	select c.*,ROW_NUMBER()OVER(PARTITION by c.kid order by id)rowno 
		from mcapp..cardinfo c
		WHERE CardType = 2 and c.kid=11 
),
CET1 AS
(
	SELECT n.n,ROW_NUMBER()OVER(order by n.n)rowno 
		FROM CommonFun.dbo.Nums n 
		WHERE n <= 65530
			AND NOT EXISTS(
				SELECT * 
					FROM dbo.cardinfo 
					WHERE EnrolNum = n.n 
						and EnrolNum is not null 
						and kid = 20850 and CardType = 2
						)
)
select ci.*,c1.*	
--update ci set kid=20850,EnrolNum = c1.n 
	from cet c 
		inner join CET1 c1 
	    on c.rowno = c1.rowno
		inner join cardinfo ci
			on c.id = ci.id;
			
--��2���ɳ������޸�
select * 
--update g set kid=20850
  from ngbapp..growthbook g
   inner join BasicData..user_class_all uca on g.userid=uca.userid and g.term=uca.term
   where kid=18699 and uca.cid=87506


select * from BasicData..User_Child where kid= 18699 and cname='�����'
--��3���޸�class���kid=20850
select * 
--update ca set kid=20850
from BasicData..class_all ca where kid= 18699 and cid=87506
--��4���޸�class_all���kid=20850
select * 
--update c set kid=20850
from BasicData..class c where kid= 18699 and cid=87506

--��5���޸�user���kid=20850
select * 
--update u set kid=20850
from BasicData..[user] u
 inner join basicdata..user_class uc 
  on u.userid=uc.userid 
   where u.kid= 18699 and uc.cid=87506


--��6���޸�teacher��Ĳ��ŷŵ�kid=20850�Ķ�������
select * from basicdata..[USER] u where kid=20850 and name in('���÷�','����ӡ','�¾շ�')

select * from basicdata..department d where kid=20850 
select *
--update t set did=120122
 from basicdata..teacher t 
  inner join basicdata..department d on t.did=d.did
 where userid in(725600,725593,1557174)
---------------------------------

--update c set deletetag=0 from BasicData..class c where kid= 20850 and cid=148107
--update ca set deletetag=0 from BasicData..class_all ca where kid= 20850 and cid=148107



------------------------------------------��ת����ʦSTART��----------------------------------------------------
--��1��ɾ��ԭ�е���ʦ���ڰ༶
select * into gbapp..user_class_20850
 from basicdata..[user_class] where userid in(2139226,721289,715729,721301,1417947)
 
delete uc
 from basicdata..[user_class] uc where userid in(2139226,721289,715729,721301,1417947)

select * into gbapp..user_class_all_20850
 from basicdata..[user_class_all] where userid in(2139226,721289,715729,721301,1417947)
 
--��2������ʦͳһ���䵽һ����
select * from BasicData..class where kid=18699
insert into BasicData..user_class(userid,cid)
select userid,125468
 from basicdata..[user] where userid in(2139226,721289,715729,721301,1417947)
 
 
--��3���޸�teacher��Ĳ��ŷŵ�kid=18699�Ķ�������
select * from basicdata..department d where kid=18699 
select *
--update t set did=79576
 from basicdata..teacher t 
  inner join basicdata..department d on t.did=d.did
 where userid in(2139226,721289,715729,721301,1417947)
 
--��4�����û���ת�Ƶ� kid=18699
select * 
-- update u set kid=18699
from basicdata..[user] u
 where kid= 20850 and name in('��־��','̷��ƽ','������','С��','������')


------------------------------------------��ת����ʦEND��--------------------------------------------------------------
