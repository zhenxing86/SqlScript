use BlogApp
go	

kmapp..km_loginv2 '13631018897ls','7C4A8D09CA3762AF61E59520943DC26494F8941B'
[km_loginV2] '13631018897ls', '7C4A8D09CA3762AF61E59520943DC26494F8941B', '34253ydfg675hr56'  
[km_loginV2] 'cjjz', '7C4A8D09CA3762AF61E59520943DC26494F8941B', '34253ydfg675hr56'                                 
select * from basicdata..[USER] where kid=28277 and usertype=1

select * from 

create table permission (id int primary key identity(1,1),ptype int,pname nvarchar(50),
remark nvarchar(200),levelno int,parentid int,opentype int,sgs int default(0),orderno int,deletetag int default(1))

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'permissionsetting�м�¼ʱ���ǿ�ͨ���ǹرա�0�رգ�1��ͨ' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'permission', @level2type=N'COLUMN',@level2name=N'opentype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ֻ���ʱ����ʹ�á�0���ǣ�1��' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'permission', @level2type=N'COLUMN',@level2name=N'sgs'
GO
		
Trg_permission --add
   
    
    

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ֻ���ʱ����ʹ�á�0���ǣ�1��' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'permissionsetting', @level2type=N'COLUMN',@level2name=N'group_no'
GO

select * from dbo.ServiceList

use kmapp
go
--talbe 
CustomPackages  -- add

--funtion
[fn_CustomPackages] --add

--update Custom_Package set url='http://sgs.pay.zgyey.com/' where ptype=117
--select * from BlogApp..permissionsetting where ptype = 131
insert into Custom_Package(kid,title,url,deletetag,ptype)
select 0,'԰������','http://m.yzxx.zgyey.com/?uid={uid}',1,128

insert into Custom_Package(kid,title,url,deletetag,ptype)
select 0,'����֧������','http://sgs.pay.zgyey.com/',1,117

insert into Custom_Package(kid,title,url,deletetag,ptype)
select 0,'�ҵĺ��','http://redbag.zgyey.com/',1,131

select * 
--update p set url='http://sgs.pay.zgyey.com/pay/index?kid={kid}&client={client}&appver={appver}&uid={uid}&hxuid={hxuid}&role={role}&key={key}' ,title ='���������'
from kmapp..Custom_Package p where ptype = 117



������
<model desc="��ͨ�ɳ�����" detail="���Ⱥ��׶�԰��ͨʹ�óɳ�����" value="123"/> 
<model desc="��ͨ�ɳ������ͼ�԰��ϵ" detail="���Ⱥ��׶�԰��ͨʹ�óɳ������ͼ�԰��ϵ" value="126"/>

ʱ������أ�
<model desc="����������"  detail="��ѡ��ʱ�����У�������ٹ���" value="124"/>  

--permission���¼����
declare @parentid int,@parentlevel int,@parentname nvarchar(100)='ʱ�������'
select @parentid =id,@parentlevel=levelno from blogapp..permission where pname=@parentname
select @parentid,@parentlevel
declare 
@ptype int = 131
,@pname nvarchar(100)='�ҵ�Ǯ��',@remark nvarchar(100)='�ҵ�Ǯ��'
,@level int=1
,@opentype  int =1
,@order int =1
,@sgs int =1
,@agentopen int = 0
select @order = ISNULL(MAX([orderno]),0)+1 from blogapp..permission
 where parentid=@parentid
select @ptype,@pname,@remark,@level,@parentid,@opentype,@order
insert into blogapp..permission(ptype,pname,remark,levelno,parentid,opentype,orderno,sgs,agentopen)
values(@ptype,@pname,@remark,@level,@parentid,@opentype,@order,@sgs,@agentopen)

declare @parentid int,@parentlevel int,@parentname nvarchar(100)='ʱ�������'
select @parentid =id,@parentlevel=levelno from blogapp..permission where pname=@parentname
select @parentid,@parentlevel
declare 
@ptype int = 132
,@pname nvarchar(100)='ȫ԰���ʹ��',@remark nvarchar(100)='�Ķ����Ŀ���Ĭ��ȫ԰���ʹ�ã���;�����С����ֱ��Ĭ�Ͽ�ͨ'
,@level int=1
,@opentype  int =1
,@order int =1
,@sgs int =1
,@agentopen int = 0
select @order = ISNULL(MAX([orderno]),0)+1 from blogapp..permission
 where parentid=@parentid
select @ptype,@pname,@remark,@level,@parentid,@opentype,@order
insert into blogapp..permission(ptype,pname,remark,levelno,parentid,opentype,orderno,sgs,agentopen)
values(@ptype,@pname,@remark,@level,@parentid,@opentype,@order,@sgs,@agentopen)
-------------------------------------------------------------------------------

update [BlogApp].[dbo].[permission] set sgs=1 where ptype in( 101,116,119,128,107,35,106,111,112,113,115,117,120,124,131)

update blogapp..permission set agentopen=1 
where ptype in(70,6,10,16,13,16,68,64,90,85,76,72,101,116,93,22,79,102,83,80,91,73,69,30,32,34,36,37,38,39,62,103,104,123,126,107,35,111,112,113,115,117,120,124)

update Custom_Package set title='�ҵ�Ǯ��' where title='�ҵĺ��' 

alter table ossapp.dbo.kinbaseinfo add master_list_title nvarchar(50)
update ossapp.dbo.kinbaseinfo set master_list_title='�����쵼' where kid= 23967
--update ossapp.dbo.kinbaseinfo set paytitle ='�ɳ����������' where kid in(23967,14979,14928)   

--insert into permission (ptype,pname,remark,levelno,parentid,opentype,orderno) values(36,'�ر�����ͼ���',' ��ѡ�󣬼ҳ��˺ŵ�¼��������ͼ���ͼ��',1,7,0,10)


kmapp
create table OptionBanner (id int identity(1,1) primary key,kid int,type int,img varchar(200),para nvarchar(200),role int,isopen int)
[fn_GetOptionBanners] --add

--create table OptionReward (id int identity(1,1) primary key,kid int,title varchar(20),img varchar(200),url nvarchar(200),role int,isopen int)
--[fn_GetOptionRewards] --add

insert BlogApp..permissionsetting(ptype,kid,group_no)
values(131,28277,1)

select * from BlogApp..permissionsetting where ptype=131

use kmapp
go
update kmapp..reward_event  set file_url='http://rewardres.b0.upaiyun.com/2016/2/22/getRedEnvelope.png'
,url='http://192.168.0.29:8101/?appver=[appver]&client=[client]&uid=[uid]&eventid=1'
where eventid=1


select *from kmapp..HomeMenu where kid =0
--�Ķ�\�༶����������\�������ͼ�����һ�����̡�
--�Ķ����񡢳ɳ���������Ӫ����\�����������Ĺ���
--�ɳ����༶

select *from kmapp..HomeMenu where title='�Ķ�'
select *from kmapp..HomeMenu where title='�༶����'
select *from kmapp..HomeMenu where title='����'
--select *from kmapp..HomeMenu where title='�����'
--select *from kmapp..HomeMenu where title='ͼ�����'
--select *from kmapp..HomeMenu where title='һ������'


--select *from kmapp..HomeMenu where title='�Ķ�����'
--select *from kmapp..HomeMenu where title='�ɳ�����'
select *from kmapp..HomeMenu where title='��������' --��Ӫ����
--select *from kmapp..HomeMenu where title='��������'
--select *from kmapp..HomeMenu where title='���Ĺ���'

select *from kmapp..HomeMenu where title='�ɳ�'
select *from kmapp..HomeMenu where title='�༶'

----------------------
update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E9%98%85%E8%AF%BB.png' from kmapp..HomeMenu h where title='�Ķ�'
update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E7%8F%AD%E7%BA%A7%E7%82%B9%E5%90%8D.png' from kmapp..HomeMenu h where title='�༶����'
update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E5%81%A5%E5%BA%B7.png' from kmapp..HomeMenu h where title='����'
--update h set ico_url='' from kmapp..HomeMenu h where title='�����'
--update h set ico_url='' from kmapp..HomeMenu h where title='ͼ�����'
--update h set ico_url='' from kmapp..HomeMenu h where title='һ������'

--update h set ico_url='' from kmapp..HomeMenu h where title='�Ķ�����'
--update h set ico_url='' from kmapp..HomeMenu h where title='�ɳ�����'
update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E8%BF%90%E8%90%A5%E5%88%86%E6%9E%90.png' from kmapp..HomeMenu h where title='��������' --��Ӫ����
--update h set ico_url='' from kmapp..HomeMenu h where title='��������'
--update h set ico_url='' from kmapp..HomeMenu h where title='���Ĺ���'

update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E6%88%90%E9%95%BF.png' from kmapp..HomeMenu h where title='�ɳ�'
update h set ico_url='http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E7%8F%AD%E7%BA%A7.png' from kmapp..HomeMenu h where title='�༶'

http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E9%98%85%E8%AF%BB.png 
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E7%8F%AD%E7%BA%A7%E7%82%B9%E5%90%8D.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E5%81%A5%E5%BA%B7.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E6%B4%BB%E5%8A%A8%E6%96%B9%E6%A1%88.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E5%9B%BE%E4%B9%A6%E7%AE%A1%E7%90%86.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E4%B8%80%E6%97%A5%E6%B5%81%E7%A8%8B.png

http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E9%98%85%E8%AF%BB%E6%9C%8D%E5%8A%A1.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E6%88%90%E9%95%BF%E8%AF%84%E4%BC%B0.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E8%BF%90%E8%90%A5%E5%88%86%E6%9E%90.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E5%81%A5%E5%BA%B7%E7%AE%A1%E7%90%86.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E5%80%9F%E9%98%85%E7%AE%A1%E7%90%86.png

http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E6%88%90%E9%95%BF.png
http://rewardres.b0.upaiyun.com/2016/2/22/TimeTreeHome/icon_%E6%97%B6%E5%85%89%E6%A0%91%E9%A6%96%E9%A1%B5_%C2%A0%E7%8F%AD%E7%BA%A7.png




