11061���ʺ�����
����Ա  zgyey01 123456
select *  from BasicData..kindergarten where NGB_Pic like '/growthbook/%'  
update BasicData..kindergarten set ngb_pic = 'http://gbimg.zgyey.com'+left(ngb_pic,LEN(ngb_pic)-4)+ '_small' +RIGHT(ngb_pic,4)
where NGB_Pic like '/growthbook/%'  

select* from BasicData..[user] where kid = 20675 and usertype>0
select* from basicdata..User_Child where account ='jz1'
653612

--UPDATE  ngbapp

1) app.zgyey.com�����ɳ��������漰(�����ø�)
NGBApp..[GetGrowhBookID]  ��������ھ��³�ʼ��һ��  (�ĵ�ǰѧ��)

2) ngbapp.zgyey.com�漰  (����Ҫ��)
NGBApp..[Init_GrowthBook]  (�ĵ�ǰѧ��)
NGBApp..GetGrowthBookListV2 �޸İ༶
NGBApp..GetGrowthBookList�޸İ༶,�Ѿ�����
GBApp..Init_HomeBook  (�ĵ�ǰѧ��)Ӧ��Ҫ�ģ���û�и�

3)da.zgyey.com �漰 (�����ø�)
gbapp..UserBaseInfo_GetListTag(�漰VIP)   ������ͬ����ſ��Ը���

4)��Դ��ȡ���� �漰(�����ø�)
gbapp..getgbinfoV2(�漰VIP)
gbapp..getclassinfo
[GetGbidTerm]

[GetHomeBookList]  ��������
ngbapp..[GetHomeBookListByUserid]  û���µ�vss

ngb.zgyey.com ֻҪ�޸��°����أ��ɰ����ز����޸�
getBookContent.ashx �ӿ���Ҫ˵��

select *from basicdata..[user]  
select *from basicdata..[teacher] t 
 inner join basicdata..[user] u 
  on u.userid=t.userid 
 where u.kid = 11061

select count(1) from basicdata..user_class
select count(1)  from basicdata..user_class_all where term='2014-0'

--update  BasicData.dbo.kid_term  set term='2014-1',iscurrent=0 where kid=12511

commonfun
CanSetCurTerm
fn_getCurrentTerm
SetCurTerm

--�¾ɰ涼�е�С����

select top 10* 
from gbapp..growthbook g
inner join BasicData..User_Child uc 
 on g.userid=uc.userid

gbapp..UserBaseInfo_GetListTag

--��ʼ������'2013-1'\'2014-0'
select* from BasicData..class_all 
where cid=81480 and kid =20298

update BasicData..class_all set cname='Сһ��new'
where cid=81480 and term='2014-0'

select top 100 u.userid,u.name,u.kid,* from GBApp..growthbook g
inner join BasicData..[user] u
on g.userid=u.userid where term='2012-1'

--��class\user_class������copy��class_all\user_class_all

2011-1 
2012-0
declare @next_term nvarchar(10)='2011-0'
update ca set kid=c.kid,cname=c.cname,grade=c.grade,[order]=c.[order],sname=c.sname,iscurrent=c.iscurrent,subno=c.subno
 from basicdata..class_all ca
  inner join basicdata..class c 
   on ca.cid = c.cid and ca.term= @next_term

insert into basicdata..class_all(cid,kid,cname,grade,[order],deletetag,sname,actiondate,iscurrent,subno,term)
 select cid,kid,cname,grade,[order],1,sname,getdate(),iscurrent,subno,@next_term
  from basicdata..class c
   where not exists(
    select 1 from BasicData..class_all ca
     where c.cid=ca.cid and term = @next_term
   )
insert into basicdata..user_class_all(cid,userid,term,actiondate,deletetag)
 select uc.cid,userid,@next_term,GETDATE(),1
  from basicdata..user_class uc
  inner join BasicData..class c 
   on uc.cid=c.cid
   where not exists(
    select 1 from BasicData..user_class_all uca
     where uc.cid=uca.cid and uc.userid =uca.userid and term = @next_term
   )



select * from ngbapp..growthbook
where term='2013-0' 


select* from basicdata..[user] where account='������'


select* from basicdata..user_class_all where userid= 487551 and term='2014-0'

select uca.userid,uca.cid,COUNT(1) cnt from basicdata..user_class_all uca
 inner join basicdata..[User] u
  on uca.userid = u.userid and uca.term='2014-0' and uca.deletetag=1 and u.deletetag=1
 group by uca.userid,uca.cid
 having COUNT(1) >1


select  u.* into #t from basicdata..user_class uc
 inner join BasicData..[User_Child] u 
  on uc.userid = u.userid 
 left join basicdata..user_class_all uca
  on uc.cid = uca.cid and uca.userid = uc.userid and uca.term='2014-0'
where uca.cid is null

select uc.userid,uc.cid,uca.cid,* from #t uc 
 left join  basicdata..user_class_all uca
  on uca.userid = uc.userid and uca.term='2014-0'
 



