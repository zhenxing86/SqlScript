22030]�����о���·�׶�԰
��ʱ��Ļ� ���һ�ԭ�¸ո�22030 �������׶�԰���׶�������Ϣ лл�� 

-- �׶�԰�Լ����࣬���༶���꼶�����ˡ�����ѧ�ڻ��Ǿɵġ�

select * from basicdata..[CLASS] where kid = 22030 order  by cid
select * from basicdata0705..[CLASS] where kid = 22030 order  by cid

select * from basicdata..[CLASS_all] where kid = 22030 and term='2015-0' order  by cid
select * from basicdata0705..[CLASS] where kid = 22030 order  by cid

update ca set ca.cname=c.cname
 from basicdata..[CLASS_all] ca
  inner join basicdata0705..[CLASS] c
   on ca.cid= c.cid and ca.term='2015-0' and c.kid=22030

select * from basicdata..[USER_CLASS] uc
 inner join basicdata..[user] u
  on uc.userid = u.userid and kid=22030 and u.usertype = 0


select * from basicdata..[USER_CLASS] uc
 inner join basicdata..[user] u
  on uc.userid = u.userid and kid=22030 and u.usertype = 0
 left join basicdata..[user_CLASS_all] uca 
  on uc.userid=uca.userid and uca.cid = uc.cid and uca.term='2015-0'
   
 
select * from basicdata..[user_CLASS_all] uca
 inner join basicdata..[user] u
  on uca.userid = u.userid and kid=22030 and term='2015-1' and u.usertype = 0
  
   where kid = 22030 and term='2015-1' order  by cid
