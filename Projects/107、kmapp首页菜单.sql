


---------------ʱ�����ҳ��˹رճɳ���������ڣ���������΢��վ�����------------- 

[km_getHomeMenus]                                            
@uid =1099745,                                            
@role =2,                                                  
@appver = '222',                                             
@client = 0,                                         
@kid = 26872 

select * from basicdata..[user] where kid=26872 and usertype=0
select * from basicdata..[user] where kid=20675 and usertype=0

--Select type, title, ico_url ico,url From dbo.[fn_GetHomeMenus](@kid,@role,1) order by orderby  

select * from kmapp..HomeMenu where kid=26872   --���û�м�¼����ʹ�� kid=-1�ļ�¼����һ�ݵ� ���԰��Ȼ���޸Ķ�Ӧ�Ĳ˵�
--insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,26872,module_id from HomeMenu where kid=-1 and isopen=1 

select * from kmapp..HomeMenu where kid=20675 and role=2 and title='΢��վ'
select * 
--update h set type=1,title='΢��վ',url='',orderby=4,ico_url='http://kmapp.zgyey.com/Content/homemenu/health.png',servtype=10,ico_url2='http://cdn.rs.oss.zgyey.com/HomeMenu/microWebSite.png',module_id=8
from HomeMenu h where kid=26872 and role=2 and isopen=1 and ID = 2868 



select *
--update h set title='�ɳ�����',servtype=23,url='http://m.yzbb.zgyey.com/home/healthservice?uid={uid}&hxuid={hxuid}&token=&kid={kid}&client={client}&appver={appver}&role={role}' 
from kmapp..HomeMenu h where kid =-5 and title='΢��վ'


select top 10* 
from BasicData..[user] u
 where u.kid>10000 and u.deletetag=1 and u.usertype=0 and not exists(select 1 from kmapp..HomeMenu h where u.kid = h.kid
 )
 

select * 
--update h set isopen=1,title='�׶�԰'
from kmapp..OptionsTab h where kid= 24082 and title='����' and role<2


select * 
--update h set kid= -1
from kmapp..HomeMenu h  where kid= 24082  


--Ĭ��ȫ��������ҳ�˵�
select * 
--update h set kid= -1
from kmapp..HomeMenu h  where kid= -1 and isopen=1 

--�ҳ�Ĭ��ȫ�����Ź㳡
select * 
--update h set isopen= 1
from kmapp..OptionsTab h  where kid= 0 and role=2 and title='�㳡'

select * 
--update h set isopen= 0
from kmapp..OptionsTab h  where kid= 32971 and title='�㳡' and role=2 
'http://m.czpg.zgyey.com/?uid={uid}&token=&role={role}&kid={kid}&hxuid={hxuid}&client={client}&appver={appver}&key={appver}'


--�ر�ʱ������ҳ�˵�ȡĬ��ֵ,��ѡ��,ʱ������ҳ�˵�ֻȡ��԰���ƵĲ˵�,��ʹΪ��,Ҳ��ȡĬ��ֵ
insert into BlogApp..permissionsetting (ptype,kid,group_no)
values(129,12511,1)
dbo.hc_grow
healthapp.dbo.hc_grow

select * from BlogApp..permission where ptype=129
select * from BlogApp..permissionsetting where ptype=129

select *  from kmapp..HomeMenu where isopen=1 and title='һ������'
select * from kmapp..HomeMenu where ico_url2 is null and isopen=1
select kid from kmapp..HomeMenu 
select * from kmapp..ServiceList 

select *from basicdata..[user] where kid =32026 and usertype=0
select top 2* from kmapp..km_user where kid=32026 and role=2
kmapp..km_login 'chhlls','7C4A8D09CA3762AF61E59520943DC26494F8941B', '34253ydfg675hr56'   
kmapp..km_loginV2 'xzx113','7C4A8D09CA3762AF61E59520943DC26494F8941B', '34253ydfg675hr56'   
kmapp..[km_loginV2] '13969003217', '7C4A8D09CA3762AF61E59520943DC26494F8941B', '34253ydfg675hr56'    

select * from kmapp..HomeMenu where kid = 23967 and role=2
select * from kmapp..HomeMenu where kid = 24082 and role=2
select * from kmapp..HomeMenu where kid = 12511 --and role=2


select * from kmapp..HomeMenu where kid = 28277 and role=2

32099,1897

23292  --�Ķ�



select * 
--update h set isopen=1
 from kmapp..OptionsTab h
where role=2 and title='�㳡' and isopen=0 and kid in(
13942,25274
)


select * from kmapp..ServiceList 







--title\url\ico_url\ico_url2\servtype\type
declare 
@title nvarchar(500)='���Ĺ�Լ',
@url nvarchar(500)='http://m.readservice.zgyey.com/BorrowManager/JYFW?uid={uid}&kid={kid}&client={client}&appver={appver}&role={role}',
@ico_url nvarchar(500)='http://kmapp.zgyey.com/Content/homemenu/ats.png',
@ico_url2 nvarchar(500)='',
@servtype int=21
update h set title=@title,url=@url,ico_url=@ico_url,ico_url2=@ico_url2,servtype=@servtype,type=1
from kmapp..HomeMenu h 
 where kid= -2 and role=1 and title='�༶'
 
 select * from kmapp..HomeMenu h  where kid =-2 and role=2 
'http://m.ats.zgyey.com/ReadServer/Index?uid={uid}&kid={kid}&client={client}&appver={appver}&role={role}&head=0'

select *
--update h set title='�����鵥' 
from kmapp..HomeMenu h 
 where kid= -2 and role =1 and title='�༶'
--------------------------------END-------------------------------------

--1	�ҳ���ͨ��
--2	�ҳ����İ�
--3	԰���Ķ��ۺϰ�
--4	��ʦ�Ķ��ۺϰ�
--5	԰������ר�ð�
--6	��ʦ����ר�ð�

--�ҳ���ͨ�� ( �Ķ�\����\�༶\�ɳ�)
select * from kmapp..HomeMenu h  where kid =0 and role=2  and module_id=1

--԰��/��ʦ�Ķ��ۺϰ�(�Ķ�\����\�༶\΢��վ)   --�����Ķ�ϵͳ����Ҫ����ʦ���ҳ�������
select * from kmapp..HomeMenu h  where kid =-3 and role in(0,1) and module_id=3

--�ҳ����İ� (���ķ���\�����鵥\��԰����\���Ĺ�Լ)   --�����ķ���\�����鵥��ַ�������⡣��
select * from kmapp..HomeMenu h  where kid =-2 and role=2  and module_id=2
--԰��/��ʦ����ר�ð�(ͼ�����\�����鵥\���Ĺ���\���ķ���)
select * from kmapp..HomeMenu h  where kid =-4 and role in(0,1) and module_id=5

select * from kmapp..HomeMenu h  where kid =24082 and role=2
select * from kmapp..HomeMenu h  where kid =35179 and role=2

--[35179]�������ܸ����д��������׶�԰   ���԰ ���鷳���Ұ�ʱ�������óɴ��Ķ���Ŷ 

------------------����ģ��---------------------'jnyyey'
select * from kmapp..HomeMenu h  where kid =33685 order by role,orderby

32099,1897



23292  --�Ķ�
-- 1���ҳ���ͨ�棬԰����ʦ����ͨ��������û�п�ͨ���ķ������û�ж��Ʋ˵���  ptype=119   kid = 12511
select * from kmapp..HomeMenu h  where kid =0 and role=2

declare @kids nvarchar(4000)='32099'
--select *
delete h 
 from kmapp..HomeMenu h inner join CommonFun.dbo.f_split(@kids,',')t on t.col=h.kid 
;with cet as(
 select col kid from CommonFun.dbo.f_split(@kids,',')t
),
data as(
select *,1 gg from kmapp..HomeMenu h  where kid =0 and role=2
)
insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,c.kid,d.gg
 from data d 
  cross join cet c 
   where not exists( select 1 from kmapp..HomeMenu hm where hm.kid=c.kid) 
go

-- 1.1���ҳ���ͨ��V2 (΢��վ\�ɳ�����\�Ķ�\�༶)��԰����ʦ����ͨ  kid = 20675,31970
select * from kmapp..HomeMenu h  where kid =31970 and role=2

declare @kids nvarchar(4000)='31970'
--select *
delete h 
 from kmapp..HomeMenu h inner join CommonFun.dbo.f_split(@kids,',')t on t.col=h.kid 
;with cet as(
 select col kid from CommonFun.dbo.f_split(@kids,',')t
),
data as(
select *,7 gg from kmapp..HomeMenu h  where kid =-5 and role=2
)
insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,c.kid,d.gg
 from data d 
  cross join cet c 
   where not exists( select 1 from kmapp..HomeMenu hm where hm.kid=c.kid) 
go

--  2���ҳ���ͨ�棬԰����ʦ��ͨ�ۺϰ棨��������ͨ���ķ������û�ж��Ʋ˵��� kid = 23967,28277,  
--31721,31691,31643,31642,31633,31630,9449,32103,32104,32105,32106,32107,32108,32110,32111,32112,32113,31727,31729,31758
--27146,31640

-----------------------�ҳ���ͨ�桢԰����ʦ�ۺϰ�28277---------------------------
select * from kmapp..HomeMenu h  where kid =0 and role=2
select * from kmapp..HomeMenu h  where kid =-3 and role in(0,1)
select * from kmapp..HomeMenu h  where kid =23292 and role=2

31339,31340,31341,31342,31343,31344,31345,31346,31347,31348,31349,31360,31355,31356,31357,31358,31359,31429,31431,29447


declare @kids nvarchar(4000)='28277'
select *
--delete h 
 from kmapp..HomeMenu h inner join CommonFun.dbo.f_split(@kids,',')t on t.col=h.kid 
;with cet as(
 select col kid from CommonFun.dbo.f_split(@kids,',')t
),
data as(
select *,1 gg from kmapp..HomeMenu h  where kid =0 and role=2
union all select *,3 from kmapp..HomeMenu h  where kid =-3 and role in(0,1)
)
insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,c.kid,d.gg
 from data d 
  cross join cet c 
   where not exists( select 1 from kmapp..HomeMenu hm where hm.kid=c.kid) 



------- 2.2��԰����ʦ�ۺϰ�V2 (΢��վ\�ɳ�����\�Ķ�\�༶)��԰����ʦ����ͨ  kid = 20675,31970---------------

�ҳ���ͨ��V3	���� �Ķ�����԰��ϵ���༶��΢��վ 8
԰���ۺϰ�V2	���� �Ķ�����԰��ϵ���༶��΢��վ 9

--23292���Ĳ��ţ�ʱ����APP�Ĵ�ģ��ĳ��Ķ�����԰��ϵ���༶��΢��վ���ҳ�����ʦ��԰���˶�����

select * from kmapp..HomeMenu h  where kid =23292 and role=2

declare @kids nvarchar(4000)='23292'
--select *
delete h 
 from kmapp..HomeMenu h inner join CommonFun.dbo.f_split(@kids,',')t on t.col=h.kid 
;with cet as(
 select col kid from CommonFun.dbo.f_split(@kids,',')t
),
data as(
select *,8 gg from kmapp..HomeMenu h  where kid =-7 and role=2
union all select *,9 from kmapp..HomeMenu h  where kid =-7 and role in(0,1)
)
insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,c.kid,d.gg
 from data d 
  cross join cet c 
   where not exists( select 1 from kmapp..HomeMenu hm where hm.kid=c.kid) 
go


--3���ҳ����İ棬԰��/��ʦ����ר�ð棨����������ֻ���Ķ���         kid = 24082
select * from kmapp..HomeMenu h  where kid =-2 and role=2 
select * from kmapp..HomeMenu h  where kid =-4 and role in(0,1)
select * from kmapp..HomeMenu h  where kid =35182 and role=2

[35182]�����л�����ŵ���������׶�԰  ���԰ ���鷳���Ұ�ʱ�������óɴ��Ķ���Ŷ 

declare @kids nvarchar(4000)='31062'
--select *
delete h 
 from kmapp..HomeMenu h inner join CommonFun.dbo.f_split(@kids,',')t on t.col=h.kid 
;with cet as(
 select col kid from CommonFun.dbo.f_split(@kids,',')t
),
data as(
select *,2 gg from kmapp..HomeMenu h  where kid =-2 and role=2 
union all select *,5 from kmapp..HomeMenu h  where kid =-4 and role in(0,1)
)
insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid,module_id)
select type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,c.kid,d.gg
 from data d 
  cross join cet c 
   where not exists( select 1 from kmapp..HomeMenu hm where hm.kid=c.kid) 
go  
------------------------------------------------------------------------
[33685]�����л�������¹�׶�԰�����Ұ���ҵ�԰ʱ�����ĳɴ��Ķ���ġ�
����ʦ����׶�԰����ġ��׶�԰�ĵ����ҵ��ĵ����汾�̡̳����������£���������Ҫ
�Ѽҳ�����׶�԰����ֱ��ɾ��

km_getServices 2147457, 1, 1 ,33685,0,1.082         

select * from kmapp..[km_user] where kid=33685 and role=1
-----------------------------���Ź㳡-------------------------
select distinct kid from kmapp..OptionsTab  where kid in(35179)
select * from kmapp..OptionsTab where kid in(35182) and isopen=1
;with cet as(
 select col kid from CommonFun.dbo.f_split('35182',',')t
)
insert into kmapp..OptionsTab(type,title,url,role,orderby,isopen,kid)
select type,title,url,role,orderby,isopen,c.kid
 from kmapp..OptionsTab h
  cross join cet c 
   where h.kid=28277 and not exists( select 1 from kmapp..OptionsTab hm where hm.kid=c.kid)

select *
--update o set isopen=0 
from kmapp..OptionsTab o where kid =33685 and role=2 and isopen=1 and type=2
-------------------------��ͨȨ�� ------------------------
--��ͨ����ϵͳ 119����ͨ�ɳ�����123���ɳ������շ�԰ 132.��ʦ��������ͼ�� 65.

insert into BlogApp..permissionsetting(ptype,kid,group_no)
select 65 ptype,col kid, 0
from CommonFun.dbo.f_split('31721,31691,31643,31642,31633,31630,9449,32103,32104,32105,32106,32107,32108,32110,32111,32112,32113,31727,31729,31758'
,',') k 
where not exists(select 1 from BlogApp..permissionsetting p where p.kid=k.col and ptype=65)
go
-------------------------------�޸�ͼ��----------------------------------
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/curMonthBooklist.png'
from kmapp..HomeMenu h  where role in (0,1) and title='�����鵥' and kid = -4
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/borrowManager.png'
from kmapp..HomeMenu h  where role in (0,1) and title='���Ĺ���' and kid = -4
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/kindergartenBooks.png'
from kmapp..HomeMenu h  where role in (0,1) and title='��԰����' and kid = -4
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/borrowConvention.png'
from kmapp..HomeMenu h  where role in (0,1) and title='���Ĺ�Լ' and kid = -4
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/bookManager.png'
from kmapp..HomeMenu h  where role in (0,1) and title='ͼ�����' and kid = -4

update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/read.png'
from kmapp..HomeMenu h  where title='�Ķ�' --and kid = 23967
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/health.png'
from kmapp..HomeMenu h  where title='����' --and kid = 23967
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/class.png'
from kmapp..HomeMenu h  where title='�༶' --and kid = 23967
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/growth.png'
from kmapp..HomeMenu h  where title='�ɳ�' --and kid = 23967

update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/microWebSite.png'
from kmapp..HomeMenu h  where title='΢��վ' --and kid = 23967

update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/borrowServiceDirector.png'
from kmapp..HomeMenu h  where role in(0,1) and title='���ķ���' --and kid = 23967
update h set ico_url2='http://rewardres.b0.upaiyun.com/HomeMenu/borrowService.png'
from kmapp..HomeMenu h  where role =2 and title='���ķ���' --and kid = 23967


--------------------��ҳ�˵������Ĺ�Լ����ͳ��-------------------
;with cet as(
select distinct kid,1 readVer from kmapp..HomeMenu where title ='���ķ���' and kid>0
union all
select distinct kid,0 readVer from kmapp..HomeMenu where title ='�Ķ�' and kid>0
),data as(
select substring(convention, PATINDEX('%tx">���ķ����%',convention)+9,7) ���ķ����,
substring(convention, PATINDEX('%����ʱ���������%',convention)+9,2) ����ʱ��,
* 
from atsapp..set_config_model where kid>0
)
select case when readVer=1 then '���İ�' else '�ۺϰ�' end ģ������,c.kid,
ISNULL(k.kname,'����') �׶�԰����,k.regdatetime ע��ʱ��, 
case when k.infofrom='����' then ag.name else k.infofrom end �����ֹ�˾, 
case when pe.readService>0 then '��ͨ' else '����' end �Ƿ�ͨ���ķ���,
case when pe.payOnline>0 then '��ͨ' else '����' end �Ƿ�ͨ����֧��,
ISNULL(d.���ķ����,'����')���ķ����,
ISNULL(d.����ʱ��,'����')����ʱ��,bu.����֤������,bo.�׶�������,ad.��ͨ���ĵ�����,isnull(bil.ͼ����,0)ͼ����,bo.���Ĵ���
from cet c 
 outer apply (
 select sum( case when p.ptype=119 then 1 else 0 end) readService,
        sum( case when p.ptype=109 then 1 else 0 end) payOnline
  from BlogApp..permissionsetting p where p.kid = c.kid and p.ptype in (109,119)
 ) pe
 outer apply (select SUM(cnt) ͼ���� from ReadApp..bm_book_inventory_log bi where bi.kid=c.kid) bil
 outer apply (select sum(case when u.usertype=0 then 1 else 0 end) �׶�������,count(o.userid) ���Ĵ��� from BasicData..[user] u
   left join ReadApp..bm_borrow_record_object o
       on o.userid = u.userid
       where u.kid=c.kid and u.deletetag=1) bo
 outer apply (select COUNT(1) ����֤������ from readapp..bm_userinfo b where b.kid=c.kid) bu
 outer apply (select COUNT(1) ��ͨ���ĵ����� from ossapp..addservice a where a10>0 and a.kid=c.kid and a.describe='��ͨ' and a.deletetag=1)ad
 inner join ossapp..[kinbaseinfo] k on c.kid = k.kid
 left join ossapp..[agentbase] ag on ag.ID = k.abid
 left join data d on c.kid=d.kid

�����ֹ�˾���г������׶�԰ע��ʱ�䣬�Ƿ�ͨ����֧�����׶�����������ͨ���ĵ�������ͼ���桢���Ĵ���

users_GetListTag_Bid ossapp

select * from readapp..bm_userinfo
select * from ossapp..addservice where a10>0 and [uid]=@userid and describe='��ͨ' and deletetag=1

select * from ossapp..[kinbaseinfo] k 
 inner join ossapp..[agentbase] ag on ag.ID = k.abid
 where k.kid =31928
 
 --select * from ossapp..users where ID= 4

--�г���Ա	4

--------------------------------------------------------------------------------

--Ĭ�ϼҳ�����ͨ ���ҳ���ͨ��( �Ķ�\����\�༶\�ɳ�)����԰����ʦ�������š�

--ֻ�п�ͨ�˽���ϵͳ���׶�԰��԰����ʦ���� ��԰��/��ʦ�Ķ��ۺϰ�(�Ķ�\����\�༶\΢��վ)��
��119������ֻ��ͨ���ĵģ�
��119����û�п�ͨ���ĵģ�Ҫ�ҳ���԰������ʦҪ�Ȳ���
��119���мҳ���ͨ���ĵģ�԰������ʦҪ�Ȳ��ϡ�

--�ҳ����İ� (���ķ���\�����鵥\��԰����\���Ĺ�Լ)
--԰��/��ʦ����ר�ð�(ͼ�����\�����鵥\���Ĺ���\���ķ���)

--���û�п�ͨ����ϵͳ,�л�����'�ҵ��鵥\���ķ���'







