select * from basicdata..kid_term where term='2018-0'




/*
-----------------------------------------
--1���׶�԰�ڲ��������ʱ��������������(���׶���������ֱ�ӽ�С����ת�Ƶ��µİ༶)��
--�����׶�԰֮ǰѧ�ڵ����ݶ�����޸ĺ����Ϣ����ѧ�ڻ�����ǰѧ�ڵġ�
--Ҳ���൱�ڵ��ࡣ

һ���������ڻ���û������ʱ�䣨����9-1����2�������ϣ�����ô����ֱ�ӽ��༶����ȥ���ɡ�
�������������Ѿ���������ʱ�䣨����9-1С��2���£����߳���9-1������ô��Ҫ�Ҽ���Э����
1�� ֱ�ӽ��༶����ȥ�����Ѿ���԰���û���԰��ȥ��
2�� ������Ҫ��class_all��user_class_all������� ��ǰ������ѧ�ڵ����ݶԵ�
*/

--��ǰ������ѧ�ڵ����ݶԵ�

--user_class_all �Ե�
select * from basicdata..user_class_all uca
 inner join BasicData..class c on uca.cid=c.cid where kid= 20581 and uca.term='2016-0' and uca.deletetag=1

update uca set term='AAAA' from basicdata..user_class_all uca
 inner join BasicData..class c on uca.cid=c.cid where c.kid= 20581 and uca.term='2016-0' and uca.deletetag=1
update uca set term='2016-0' from basicdata..user_class_all uca
 inner join BasicData..class c on uca.cid=c.cid where c.kid= 20581 and uca.term='2016-1' and uca.deletetag=1
update uca set term='2016-1' from basicdata..user_class_all uca
 inner join BasicData..class c on uca.cid=c.cid where c.kid= 20581 and uca.term='AAAA' and uca.deletetag=1


--class_all �Ե�
select * from basicdata..class_all where kid= 20581 and term='2016-0'

update ca set term='AAAA' from basicdata..class_all ca where kid= 20581 and term='2016-0' and deletetag=1
update ca set term='2016-0' from basicdata..class_all ca where kid= 20581 and term='2016-1' and deletetag=1
update ca set term='2016-1' from basicdata..class_all ca where kid= 20581 and term='AAAA' and deletetag=1



--------------------------------------------------
select * from basicdata..user_class_all uca
 inner join BasicData..class_all ca
  on uca.cid=ca.cid and ca.deletetag=1 and uca.deletetag=1 and uca.term=ca.term where kid= 20581 and ca.term='2016-1'
  order by ca.cid

select * from basicdata..user_class uc
 inner join BasicData..class c
  on uc.cid=c.cid and c.deletetag=1 where kid= 20581 
  order by c.cid





---------------------------��õķ��������þ����ݿ⻹ԭ��-------------------------------------------
select * from basicdata..user_class uc
 inner join BasicData..class c
  on uc.cid=c.cid and c.deletetag=1
   where kid= 20581 

select * 
from BasicData..class
 where kid=20581 and deletetag=1
 
select * 
from BasicData..class_all
 where kid=20581 and deletetag=1 and term='2016-0'

select top 0 * into gbapp..class_all from basicdata..class_all
select top 0 * into gbapp..user_class_all from basicdata..user_class_all

 
select * 
--delete
 from basicdata..class_all
where kid=20581 and term='2016-1'

insert into BasicData..class_all(cid,kid,cname,grade,[order],deletetag,sname,actiondate,iscurrent,subno,term,isgraduate)
select cid,kid,cname,grade,[order],deletetag,sname,actiondate,iscurrent,subno,term,isgraduate
from basicdata..class





--�ӱ�������ȡ���� ���뵽 gbapp..user_class_all
="INSERT into user_class_all(cid,userid,term,[order],deletetag) values('"&A2&"','"&B2&"','2016-0','"&D2&"',1)"

--ɾ��ԭ������
select uc.*
--delete uc
 from BasicData..[user_class_all] uc
  inner join BasicData..[user] u
   on uc.userid=u.userid and term='2016-0' 
  where u.kid=18023
  
--��gbapp..user_class_allͬ���� basicdata..user_class_all
insert into BasicData..[user_class_all](cid,userid,term,deletetag,[order])
select cid,u.userid,'2016-0',1,uc.[order]
 from gbapp..[user_class_all] uc
  inner join BasicData..[user] u
   on uc.userid=u.userid --and term='2016-0' 
  where u.kid=18023


select * 
--delete uc
 from basicdata..user_class_all uc
   inner join BasicData..class c
  on uc.cid=c.cid and c.deletetag=1
where kid=20581 and term='2016-1'

--insert into BasicData..user_class_all(cid,userid,term,actiondate,deletetag,[order])
select uc.cid,userid,'2016-1',actiondate,deletetag,uc.[order]
from basicdata..user_class uc
 inner join BasicData..class c
  on uc.cid=c.cid and c.deletetag=1
  where kid=20581 


