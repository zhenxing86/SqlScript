
--Ӧ���и���ʱ��������2��1�ź��Զ���ѧ���л�������С������Ϣд��class_all\user_class_all
--û��ѧ�ڣ�����ʼ����һ���ɳ�����
�򿪻�����ѧ�ڵĳɳ�������


����2-1�ţ��Զ��л�ѧ�ڣ���ʼ���°�ɳ�����������ѧ�ڳɳ�����

select* from basicdata..User_Child 
where kid=11061 and account like 'czda[1-9]'

ngbapp..getgrowthbookv2 10878032

select account,* from ngbapp..growthbook g
inner join BasicData..user_child uc
 on g.userid=uc.userid where g.kid=11061 and account like 'czda[1-9]'
 and term='2014-0'

select *
from BasicData..[user] uc
 where usertype=98 and kid =9535

--��ǰѧ��
select * from BasicData.dbo.kid_term where kid =9535
select *from basicdata..kindergarten where actiondate<='2014-06-03 19:00'  order by kid desc
select * from basicdata..class where kid=23074
select * from basicdata..class_all where term='2014-1' and cid=32330
select * from basicdata..user_class_all where term='2014-1' and cid =32330
select * from basicdata..user_class where cid >32308
701273
723098
696844

select * from 
 
 delete from BasicData.dbo.kid_term where kid =11061 and term='2014-1'
 update BasicData.dbo.kid_term set iscurrent=0 where kid =11061 and term='2014-0'
--��ѧ��
insert into BasicData..user_class_all(cid,userid,term,actiondate,deletetag)
select 90580,810482,'2014-0',GETDATE(),1

select * from basicdata..user_class_all where term='2014-0'
and userid =810482
select * from basicdata..class_all where term='2014-0' and cid=90580

select * from ngbapp..growthbook --where gbid=10878026
where userid=810482

--�ɳ�������Ϣ
ngbapp..getGrowthbookv2 10855478
select* from ngbapp..growthbook where gbid=10855478

--���뵥
select * from gbapp..archives_apply where userid=810475

ngbapp..growthBook

select * delete from BasicData.dbo.kid_term where kid=0


--ɾ���ɳ�����
select * from ngbapp..growthBook where userid in (810473,810482) and term='2014-0'
delete from ngbapp..growthBook  where gbid in(10878037,
10878026,10855478)

--��������
 insert into ngbapp..growthbook_permission(kid,term,bgntime,endtime,candown,deletetag)
select *,kid,'2014-1',bgntime,endtime,0,1 from ngbapp..growthbook_permission 
where kid=11061 and term='2014-0'

update ngbapp..growthbook_permission set endtime='2014-07-09 10:30:00.000'
 where kid=11061 and term='2014-0'
 
--�ǻ۶���ѯ
select * from BasicData..User_Child where account='czda4'
select*from PayApp..user_pay_account where userid=810475

insert into payApp..user_pay_account (userid,re_amount,re_beancount)
select 810475,50,250

--
select* from basicdata..[User] where kid=4246 and usertype>0--account ='jz1'

select* from LogData..ossapp_addservice_log where describe='�ر�'

basicdata..class_all

--ȷ������Դ
�ɰ� �����ģ�ֻҪ������ͬ���þ����ˡ�

 
 ngbapp..GetGrowthBookListV2  �Ѿ�����   �����Ϊ��allȡ����Ӱ��
 
 ngbapp..Init_GrowthBook ��û����    ��Ӱ��
 
 ngbapp..[GetHomeBookList]  ���������²�֪���᲻����ֽ������(com.zgyey.webapp.homebook/v5/hbbooklist.aspx)  �ݲ�����
 
 
 select top 1* from ossapp..addservice_status_log
  select top 1* from ossapp..addservice
  
  
 --��ʼ���ɳ���������
 
 
 