


--------------------��ѧ�ڵ����ϣ�����������࣬���ܽ���--------------------------

'13288810765'  --2018-05-18 16:08:49.237
select * from basicdata..User_Child where userid=2455280
select * from basicdata..User_Class where userid=2455280
select * from basicdata..User_Class_All where userid=2455280
select * from basicdata..user_class_changehistory where userid=2455280
select * from ossapp..users where id=384

--insert into basicdata..User_Class_All(cid,userid,term,actiondate,deletetag,[order])
select cid,uca.userid,'2018-1',GETDATE(),1,[order]
 from basicdata..User_Class uca
 inner join basicdata..[user] u on uca.userid=u.userid
  where u.kid=21200


select *
--delete uca
 from basicdata..User_Class_All uca
 inner join basicdata..[user] u on uca.userid=u.userid
  where u.kid=21200 and uca.term='2018-1' 
  
--21200 ]�����׶�԰ ���Ҳ�����԰���а�����ô�������ģ���Ϊ�׶�԰˵�༶��ҳ��������
select * from basicdata..User_Class where userid=2455280
select * from basicdata..User_Class_All where userid=2455280
select * from basicdata..user_class_changehistory where userid=2455280

select * from BasicData..class where kid=21200 order by actiondate