

-----------------------������ѧ�ڵĳɳ�����------------------------------------
declare @date datetime=dateadd(month,3,getdate())   --select * from ossapp..users where name='����'     
exec CommonFun.dbo.SetCurTerm @kid=15923,@date=@date,@douserid=384,@del_leave=1   --0����ɾ��user_class_all������԰���û���1��ɾ��user_class_all������԰���û�    


-----------------------��������----------------------------------
select *From basicdata..[user] where account='����Baby21'


���ˣ���������о���С���ѣ�˵�����˱�ҵ��Ͳ������سɳ��������Ұ�С���ѵ��ش������ˣ��򿪳ɳ�����Ҳ�������Ŷ����ʲôԭ���أ�лл

select * 
--delete p
--update p set candown =0
--update p set candown =0,endtime='2016-09-11' 
from ngbapp..growthbook_permission p 
where kid=14913 and term='2017-1'


--select CommonFun.dbo.fn_getCurrentTerm(0,GETDATE(),0)


24072]���ݺ����������׶�԰�������ִ�԰�������ڼҳ���û�յ�����֪ͨ���������سɳ�����ʱ�䣬�������¿��ŵ�8��2

declare @kids nvarchar(4000) ='23269'   --14933 14979
,@term nvarchar(10)='2019-0'
,@bgntime datetime = '2019-07-12'
,@endtime datetime = '2019-08-10'
;With Data as (  
	select col kid,@term term,@bgntime bgntime,@endtime endtime
	 from CommonFun.dbo.f_split(@kids,',')c
)  
Merge ngbapp..growthbook_permission a
Using Data b On a.kid=b.kid and a.term=b.term
When Matched Then  
Update Set bgntime=b.bgntime,endtime=b.endtime,candown=0
When not Matched Then  
Insert (kid,term,bgntime,endtime,candown) 
 Values(b.kid,b.term,b.bgntime,b.endtime,0); 
  
go
--[24072]���ݺ����������׶�԰�������ִ�԰�����ɳ���������ʱ������Ϊ��7��22��-7��26�ա�
--24072]���ݺ����������׶�԰�������ִ�԰�����	13570980992����ɳ�����û�յ����ţ��������ز��ˣ��鷳��һ�£�лл
[24072]���ݺ����������׶�԰�������ִ�԰�����ɳ������ӳٿ��ŵ�8��4��

--����֮ǰѧ��
declare @kids nvarchar(4000) ='24072'   --14933 14979
,@bgntime datetime = '2019-07-08'
,@endtime datetime = '2019-08-05'
;With Data as (  
	select col kid,@bgntime bgntime,@endtime endtime
	 from CommonFun.dbo.f_split(@kids,',')c
)  
Update p Set bgntime=b.bgntime,endtime=b.endtime,candown=0
from ngbapp..growthbook_permission p
 inner join Data b on p.kid=b.kid and p.term<>'2019-1'

select * from ngbapp..growthbook_permission where kid=23269
go

[23269]��̨���׶�԰ �ɳ��������¿��ŵ�7��31��

select * 
--update g set candown=0
--update g set bgntime = '2019-07-08',endtime = '2019-07-15'
from ngbapp..growthbook_permission g where kid=14979 and id>=86349 --and term='2018-1' and candown=0

--ȫ������
declare
@term nvarchar(10)='2018-0'
,@bgntime datetime = '2018-07-01'
,@endtime datetime = '2018-09-01'
;With Data as (  
	select distinct kid,@term term,@bgntime bgntime,@endtime endtime from NGBApp..growthbook 
)  
Merge ngbapp..growthbook_permission a
Using Data b On a.kid=b.kid and a.term=b.term
When Matched Then  
Update Set bgntime=b.bgntime,endtime=b.endtime,candown=1
When not Matched Then  
Insert (kid,term,bgntime,endtime,candown) 
 Values(b.kid,b.term,b.bgntime,b.endtime,1); 

--ɾ��δ��VIP�������¼
 select COUNT(1) --*
--delete aa
 from gbapp..archives_apply aa 
 inner join basicdata..user_child uc
  on aa.userid=uc.userid
 where aa.applytime>='2015-01-01' and uc.kid in(14869,14909,14910,14912,14913,14917,14919,14934,15053,14928)
  and not exists(
   select * from ossapp..addservice a
    where a.deletetag=1 and a.[uid]=aa.userid and a.describe='��ͨ' 
     and a.ftime<=GETDATE() And a.ltime>=GETDATE() And a3>0
   )
 
 select * from gbapp..archives_apply where userid=2131554
 '15920351883'

select * from PayApp..fees where kid=23967

select * from ngbapp..growthbook_permission where kid=27399
select * from basicdata..kid_term where term='2019-1'
-------------------------------------------------------------
declare 
@querySql nvarchar(4000)=''
,@ParmDefinition nvarchar(4000)='@account nvarchar(10),@kid int,@name nvarchar(20),@queryTable nvarchar(20)
,@userTable nvarchar(20),@use_childTable nvarchar(20),@km_userTable nvarchar(20)'
,@userTable nvarchar(50)='select * from basicdata..[user] where 1=1'
,@use_childTable nvarchar(4000)='select * from basicdata..[user_child] where 1=1'
,@km_userTable nvarchar(4000)='select * from kmapp..[km_user] where 1=1'
,@account nvarchar(20)=''
,@kid int =12511
,@name nvarchar(20)=''
,@queryTable nvarchar(20)='user_child'
if @account<>'' set @querySql =' and account=@account'
if @kid>0 set @querySql =' and kid=@kid'
if @name<>'' set @querySql =' and name=@name'

print @queryTable
select @querySql = 'case @queryTable when ''user'' then  @userTable when ''use_child'' then @use_childTable when ''km_user'' then @km_userTable else @km_userTable end' +@querySql
print @querySql +' ==>' +@queryTable
exec sp_executesql @querySql,@ParmDefinition,@account=@account,@kid=@kid,@name=@name,@queryTable=@queryTable
,@userTable=@userTable,@use_childTable=@use_childTable,@km_userTable=@km_userTable
