use kmapp
go

/*

ʱ����Ȩ�޿���

*/
'yz1'
---------------------��Ȩ��˵��permission����Ӧoss��̨������Ȩ���б���-------------------
select * from [BlogApp].[dbo].[permission] where parentid=0
select * 
--update p set opentype=1
from [BlogApp].[dbo].[permission] p where parentid=8 and ptype=154

--����Ȩ���б�
declare @ptype int,@pname nvarchar(100),@remark nvarchar(max),@levelno int,@parentid int,@opentype int,@sgs int,@orderno int,@isExt int,@agentopen int

--select @levelno=1,@sgs=1,@orderno=1,@isExt=0,@agentopen=0,
--@parentid=3,@ptype=148,@pname='��ͨ����쿨',@remark='��ͨ����쿨',@opentype=1

--select @levelno=1,@sgs=1,@orderno=1,@isExt=0,@agentopen=0,
--@parentid=8,@ptype=153,@pname='�رհ༶Ȧ�е������Ӱ���ֹ���Ʒ',@remark='��ѡ�󣬹رհ༶Ȧ�е������Ӱ���ֹ���Ʒ',@opentype=0

select @levelno=1,@sgs=1,@orderno=1,@isExt=0,@agentopen=0,
@parentid=8,@ptype=154,@pname='������Ƭͬ���������Ӱ���ֹ���Ʒ���ɳ��ռ�',@remark='��ѡ��������Ƭͬ���������Ӱ���ֹ���Ʒ���ɳ��ռ�',@opentype=0

select @orderno=MAX(isnull(orderno,0))+1 from [BlogApp].[dbo].[permission] where parentid=@parentid
insert into [BlogApp].[dbo].[permission](ptype,pname,remark,levelno,parentid,opentype,sgs,orderno,isExt,agentopen)
select @ptype,@pname,@remark,@levelno,@parentid,@opentype,@sgs,@orderno,@isExt,@agentopen

----------------------��ʱ����Ȩ�޸��Ի����������Ի����ӵ�ַCustom_Package��-------------------

--Ĭ����ʹ�� kid=0�����������ӵ�ַ

select * from kmapp.[dbo].Custom_Package where kid=24082
select * from kmapp.[dbo].Custom_Package where kid=28277
select * from [BlogApp].[dbo].[permission]
--34147,34148
select * from BasicData..[User] where kid=34148 and deletetag=1 and usertype=0
insert into kmapp.[dbo].Custom_Package(kid,ptype,title,url,deletetag)
values(0,150,'���������','http://sgs.pay.zgyey.com/pay/index?kid={kid}&client={client}&appver={appver}&uid={uid}&hxuid={hxuid}&role={role}&key={key}',1)


----------------------�����׶�԰��Ȩ��permissionsetting��-------------------

select * from [BlogApp].[dbo].[permissionsetting]
select distinct ptype from [BlogApp].[dbo].[permissionsetting]

select * 
--update p set pname='�ر�ʱ����ʹ��httpsЭ��',remark='��ѡ��ʱ������ʹ��httpsЭ��'
from [BlogApp].[dbo].[permission] p
where ptype=151

----------------------------------------------------------------------------------------
declare @kid int=12511
Select * Into #permission From [BlogApp].[dbo].[permissionsetting] where kid = @kid  
select ptype,title,url into #Custom from kmapp..Custom_Package where kid= @kid and deletetag=1                                                                        
insert into #Custom select ptype,title,url
 from kmapp..Custom_Package cp where kid= 0 and deletetag=1
  and not exists(
    select 1 from #Custom cp1
     where cp1.ptype=cp.ptype
)

Select p.ptype,isnull(c.title,'') title,isnull(c.url,'') url,                                      
case when p.opentype =1 then (case when p2.ptype>0 then 1 else 0 end )                                      
else (case when p2.ptype>0 then 0 else 1 end ) end isopen                                      
From [BlogApp]..[permission] p                                      
 left join #Custom c on c.ptype = p.ptype                                    
 left join #permission p2 on p.ptype=p2.ptype                                      
  where p.sgs=1 and p.ptype>-1 and deletetag=1
  
drop table #Custom,#permission
-----------------------------------------------------------------------------------


declare @editchild int,@editteacher int  
select @editchild= sum(case when roletype=6 then 1 else 0 end), @editteacher= sum(case when roletype=7 then 1 else 0 end)  
from mcapp..sms_man_kid where kid=23967 and userid=862869 and roletype in(6,7)
group by userid

select @editchild,@editteacher


'chhlls'