 hbid=5956,7036,12567(0,2)  9061,5620,5884(0,1,3)  9043,12530,12419(1,2),8380,8268(0,2,3)    rows=25225
 
 --��������ʦ
 select  *from BasicData..[user] u
 inner join BasicData..user_class uc on u.userid= uc.userid
 inner join BasicData..class c on uc.cid = c.cid
 where --u.kid = 14191 and 
 uc.cid=53472 and u.usertype>0
 
 select *from BasicData..class where kid =14191 and cname='����һ��'
 
 ================�����׶�԰======
 declare @kid int =14191
;with cet as(
 SELECT gb.gbid, gb.userid, u.name,hb.hbid   
  from HomeBook hb    
    inner join BasicData..class c     
      on hb.cid = c.cid    
    inner join BasicData..user_class uc    
     on c.cid = uc.cid    
    inner join BasicData..[user] u    
     on u.userid = uc.userid    
     and u.deletetag = 1    
     and u.usertype = 0    
    inner join GrowthBook gb    
     on gb.userid = u.userid    
     and gb.term = hb.term      
   WHERE hb.kid<>@kid --  hb.hbid = @hbid     
 )  
  select d.gbid, d.diaryid, gb.hbid, gb.userid, pm.title,     
     pm.MyPic, pm.TeaWord, pm.ParWord, pm.MyWord 
     --into #t   
  FROM cet gb     
   inner join diary d    
    on d.gbid = gb.gbid    
   inner join page_month_sec pm    
    on pm.diaryid = d.diaryid
  order by gb.userid,d.diaryid
  

20175
==========������԰��ϵ��(�޸�)=============

declare @hbid int =20175	--userid=747117      14428

;with cet as(
 SELECT c.cname,c.cid,gb.gbid, gb.userid, u.name,hb.hbid  
  from HomeBook hb    
    inner join BasicData..class c     
      on hb.cid = c.cid    
    inner join BasicData..user_class uc    
     on c.cid = uc.cid    
    inner join BasicData..[user] u    
     on u.userid = uc.userid    
     and u.deletetag = 1    
     and u.usertype = 0    
    inner join GrowthBook gb    
     on gb.userid = u.userid    
     and gb.term = hb.term      
   WHERE hb.hbid = @hbid     
 )  
  select gb.cname,gb.cid,d.gbid, d.diaryid, gb.hbid, gb.userid, pm.title,     
     pm.MyPic, pm.TeaWord, pm.ParWord, pm.MyWord 
     into #t   
  FROM cet gb     
   inner join diary d    
    on d.gbid = gb.gbid    
   inner join page_month_sec pm    
    on pm.diaryid = d.diaryid
  order by gb.userid,d.diaryid
  
  
  select * from #t --where title=100
  
  --update pm set title =1
  --from page_month_sec pm 
  -- inner join #t t on pm.diaryid=t.diaryid
  -- where t.title=100
  
  drop table #t
  
  
  --�׶�����
--С�� 20382
--С�а� 20270
--���а� 20986

--����� 20175
--��һ�� 20987

20987	��һ��
20175	�����
20270	С�а�
--20382   2--4    
--20986   2--4


select * from ngbapp..homebook where kid=21937

declare @hbid int =20270
;with cet as(
 SELECT c.cname,c.cid,gb.gbid, gb.userid, u.name,hb.hbid  
  from HomeBook hb    
    inner join BasicData..class c     
      on hb.cid = c.cid    
    inner join BasicData..user_class uc    
     on c.cid = uc.cid    
    inner join BasicData..[user] u    
     on u.userid = uc.userid    
     and u.deletetag = 1    
     and u.usertype = 0    
    inner join GrowthBook gb    
     on gb.userid = u.userid    
     and gb.term = hb.term      
   WHERE hb.hbid = @hbid     
 )  
    
   select d.crtdate,gb.gbid, d.diaryid, @hbid hbid, gb.userid, pc.title,     
     pc.TeaPoint, pc.TeaWord, pc.ParPoint, pc.ParWord 
     into #t
  FROM cet gb     
   inner join diary d    
    on d.gbid = gb.gbid    
   inner join page_cell pc    
    on pc.diaryid = d.diaryid  
    
    select * from #t --where title=3
  
  --update pm set title =6
  --from page_cell pm 
  -- inner join #t t on pm.diaryid=t.diaryid
  -- where t.title=12
  

  
    drop table #t


��21937��ʱ�����⼯�ſ��������������. 

��ã��鷳�㽫���а༶���׶����ֵĵ��������ݵ����ھ���ȥ

20986
20987
20382
20270
20175

5�����ܵ����ھ���
20382   2--4    
20986   2--4

