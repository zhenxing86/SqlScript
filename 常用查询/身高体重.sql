
http://healreportV2.zgyey.com/GroupPatrol/Index?kid=37703


http://healthcenterapp.zgyey.com/health/index?kid=34357&uid=2494526

https://myzbb.zgyey.com/health/index?uid=1&kid=34357&cid=-1
https://myzbb.zgyey.com/health/index?uid=1&kid=28277&cid=-1

http://lm.yzbb.zgyey.com/health/index?uid=1&kid=34357&date=2018-10-01
http://lm.yzbb.zgyey.com/health/tchindex?uid=1&kid=34357&cid=163052&date=2018-10-01

select * from kmapp.dbo.push_message where userid=685567 and adddate>='2018-10-30'
select * from kmapp.dbo.push_message_error where userid=685567 and adddate>='2018-10-30'

--���͸�԰����Уҽ
Insert Into kmapp.dbo.push_message(userid, publicid, pcid, msgtype, status, action, pctype,title, content, file_url, typeid, url)        
  Select u.userid, 16, 0, 5, 0, 1, 4, '�׶�������ز�������' title, '2019��5��ȫ԰�׶�������ز�������' content, '' file_url, 3,        
         'https://myzbb.zgyey.com/health/index?uid=' + Cast(u.userid as Varchar(10))+'&kid='+Cast(kid as Varchar(10))+'&date=2019-05-01' url--,u.name
    From basicdata..app_user u
    Where u.kid = 34357 and role=0 and u.usertype3 in(98,97,95) and userid in(2204817,2495915,2507281)

Insert Into kmapp.dbo.push_message(userid, publicid, pcid, msgtype, status, action, pctype,title, content, file_url, typeid, url)        
  Select u.userid, 17, 0, 5, 0, 1, 4, '�׶�������ز�������' title, '2019��5��ȫ԰�׶�������ز�������' content, '' file_url, 3,        
         'https://myzbb.zgyey.com/health/index?uid=' + Cast(u.userid as Varchar(10))+'&kid='+Cast(kid as Varchar(10))+'&date=2019-05-01' url
    From basicdata..app_user u
    Where u.kid = 34357 and role=1 and u.usertype3 in(97,95) and userid=2495915
    
--���͸���ʦ
Insert Into kmapp.dbo.push_message(userid, publicid, pcid, msgtype, status, action, pctype,title, content, file_url, typeid, url)        
  Select u.userid, 17, 0, 5, 0, 1, 4, '�׶�������ز�������' title, '2019��5��'+c.cname+'�׶�������ز�������' content, '' file_url, 3,        
         'https://myzbb.zgyey.com/health/tchindex?uid=' + Cast(u.userid as Varchar(10))+'&kid='+Cast(u.kid as Varchar(10))+'&cid='+Cast(uc.cid as Varchar(10))+'&date=2019-05-01' url--,u.name 
    From basicdata..app_user u
     inner join basicdata..user_class uc on u.userid=uc.userid
     inner join basicdata..class c on c.cid=uc.cid
     inner join basicdata..teacher t on u.userid=t.userid and t.title='������ʦ'
    Where u.kid = 34357 and role=1 and u.usertype3 =1 and u.deletetag=1 

--���͸�С����
Insert Into kmapp.dbo.push_message(userid, publicid, pcid, msgtype, status, action, pctype, 
                                   title, content, file_url, typeid, url)        
  Select userid, 18, 0, 5, 0, 1, 4, '�׶�������ز�������' title, '2019��5���׶�������ز�������' content, '' file_url, 3,        
         'https://mjkzx.zgyey.com/health/hw?uid=' + Cast(userid as Varchar(10)) url 
    From kmapp.dbo.km_user
    Where userid In (Select userid From healthapp..hc_grow Where kid = 34357 and adddate>='2019-05-01') and role = 2 --and userid=2330535  

https://mjkzx.zgyey.com/health/hw?uid=
--[healthapp].[dbo].[rep_stu_weight_week] 21666,92741,'2015-1-1','2016-1-1' 
--[healthapp]..rep_child_standard_grow_all_detail 21666,2,0 

---------------healthapp..hc_grow--------------
select * from healthapp..hc_grow where adddate>='2018-10-01'


healthapp..get_heightweight   --԰����Уҽ����ʦ
healthapp..get_user_height_weight --�ҳ�


--1)��ѯ�Ƿ���� <50 or >150 ��������
;with data as(
select ROW_NUMBER() over( partition by g.userid order by case when height<=50 or height>=150 then 0 else 1 end desc,growid) rowid,g.* 
from healthapp..hc_grow g inner join BasicData..[user] u on g.userid=u.userid
 where kid=34357 
 --and indate>='2018-10-01' and indate<'2018-12-01'
 and indate>='2019-05-01' and indate<'2019-06-01'
)
select *
from data
where (height<=50 or height>=150) and rowid>1

--ɾ�� <50 or >150 ��������
select * 
--delete g
from healthapp..hc_grow g inner join BasicData..[user] u on g.userid=u.userid
where u.kid=34357 and (height<=50 or height>=150 )
 and indate>='2019-05-01' and indate<'2019-06-01'
 and exists(select * from healthapp..hc_grow g2 where g.userid=g2.userid and g2.height>50 and g2.height<150
 and g2.indate>='2019-05-01' and g2.indate<'2019-06-01'  
 )

--2)����ϸ��µĲ�����߱�����µĸߣ�����߸�Ϊ�ϸ��µ����
;with data as(
select ROW_NUMBER() over( partition by g.userid order by indate) rowid,g.* from healthapp..hc_grow g inner join BasicData..[user] u on g.userid=u.userid
 where kid=34357 and indate>='2019-04-01'
)
--select d2.growid d2id,d2.rowid d2rowid,d2.height d2height,d2.weight d2weight,d2.indate d2cdate,d2.adddate d2adate,d.*
select d2.growid d2id,d2.height d2height,d2.weight d2weight,d2.indate d2cdate,d.*
--update d2 set height=d.height 
from data d2 inner join data d on d.userid=d2.userid and d2.rowid>d.rowid
where d.height>d2.height and d2.indate>'2019-05-01' and d.indate<'2019-05-01' and d.height>50 and d.height<150

--------------�׶�԰�����������ϸ-----------------------
----�꼶 �༶  ����  ���� �Ա�  ������ʱ��  ����(KG)   ��������  ���(CM) �������  ���ء��������----------
select CONVERT(varchar(100),DATEADD(MONTH,-a.months,GETDATE()), 23) date,a.* into #standards from healthapp..GrowthStandards_v2 a      
;with data as(
select u.grade,u.userid,g.indate,u.gender,u.cname ,u.name ,u.birthday,g.height,g.weight,adddate,
case when u.birthday is not null then (year(GetDate())-year(u.birthday))*12 + month(GetDate())-month(u.birthday)+case when day(GetDate()) > day(u.birthday) then 0 else -1 end else null end mon,
ROW_NUMBER() over( partition by g.userid order by indate) rowid
from healthapp..hc_grow g 
inner join BasicData..[user_child] u 
on g.userid=u.userid
 where kid=34357
 and indate>='2019-05-01'
 and g.height>50 and g.height<150
)
select * into #a from data where rowid=1        
        
select * into #b1 from (      
    select ROW_NUMBER() OVER(PARTITION BY a.userid ORDER BY b.date) num, a.*,b.date,b.months,      
    case when a.height < b.[h-2sd] then '����'      
     when a.height between b.[h-3sd] and b.[h-2sd] then '����'      
     when a.height between b.[h-2sd] and b.[h-1sd] then '����'      
     when a.height between b.[h-1sd] and  b.[h+1sd] then '��'      
     when a.height between b.[h+1sd] and b.[h+2sd] then '����'      
     when a.height between b.[h+2sd] and b.[h+3sd] then '�ϵ�'      
     when a.height >= b.[h+3sd] then '�ϵ�'      
     when a.height is null or a.weight is null or a.birthday is null then '���ϲ�����'      
    else '����' end heightstatus,      
    case when a.weight < b.[w-2sd] then '����'      
     when a.weight between b.[w-3sd] and b.[w-2sd] then '����'      
     when a.weight between b.[w-2sd] and b.[w-1sd] then '����'      
     when a.weight between b.[w-1sd] and b.[w+1sd] then '��'      
     when a.weight between b.[w+1sd] and b.[w+2sd] then '����'      
     when a.weight between b.[w+2sd] and b.[w+3sd] then '�ϵ�'      
     when a.weight >= b.[w+3sd] then '�ϵ�'      
     when a.weight is null or a.weight is null or a.birthday is null then '���ϲ�����'      
    else '����' end weightstatus      
     from #a a left join #standards b on a.gender = b.gender and a.birthday <= b.date      
 ) a where a.num = 1      
      
    select * into #b2 from(      
    select ROW_NUMBER() over(partition by a.userid order by b.height desc) num,a.*      
    ,case when a.weight < b.[w-2sd] then '����'      
     when a.weight between b.[w-3sd] and b.[w-2sd] then 'ƫ��'      
     when a.weight between b.[w-2sd] and b.[w-1sd] then '����'      
     when a.weight between b.[w-1sd] and b.[w+1sd] then '����'      
     when a.weight between b.[w+1sd] and b.[w+2sd] then '����'      
     when a.weight between b.[w+2sd] and b.[w+3sd] then 'ƫ��'      
     when a.weight >= b.[w+3sd] then '����'      
     when a.height is null or a.weight is null then '���ϲ�����'      
     else '����' end remark      
    from #a a      
    left join healthapp..heightweightStandards b      
    on a.gender = b.gender and a.height >= b.height      
    ) a where num = 1   
 --select a.indate,a.height,a.weight,a.heightstatus,a.weightstatus,b.remark,a.name
 select g.gname �꼶,a.cname �༶,a.name ����,cast(a.mon/12 as varchar) +'��'+cast(a.mon%12 as varchar)+'����' ����,case when a.gender=2 then 'Ů' else '��' end �Ա�,
 a.indate ������ʱ��,a.weight [����(KG)],a.weightstatus ��������,a.height [���(CM)],a.heightstatus �������,b.remark [���ء��������]
  from #b1 a join #b2 b on a.userid = b.userid
  inner join BasicData..grade g on a.grade=g.gid   
 and a.indate is not null
 order by g.gname,a.cname,a.name
      
 drop table #b1,#b2,#standards,#a 

-----------------�����-------------
 ;with data as(
select u.cname �༶,u.name ����,convert(varchar(10),u.birthday,120) ��������,g.height ���,g.weight ����,adddate ��������,ROW_NUMBER() over( partition by g.userid order by indate) rowid
from healthapp..hc_grow g 
inner join BasicData..[user_child] u 
on g.userid=u.userid
 where kid=34357
 and indate>='2019-05-01'
 and g.height>50 and g.height<150
)
select �༶,����,��������,���,����,�������� from data where rowid=1 order by �༶,����

 

