select* from BasicData..[User]
where kid=4246 and usertype>1

select * from BasicData..user_class
where userid=66362

2011-1 
2012-0

select d.kid,kname,* from mcapp..driveinfo d
 inner join BasicData..kindergarten k
  on d.kid= k.kid
   where devicetype=2
   
select* from basicdata..[user_child] where account='jj0417'
anny815530,123456

ngbapp..getgrowthbookv2 4096

--��ɰ�
select *--homebookid,classid,classname,grade,term,createdate,childlist,theme    --8
 FROM ebook..HB_HomeBook h
  inner join BasicData..class c
   on h.classid=c.cid
 where kid=4246 --classid in ("+classid+") 
 order by homebookid desc
--�ɰ�
SELECT hbid,garten_name,class_name,classid,term,createdate,cellsetid,kid,modulesetid,sectionsetid  --33
 FROM gbapp..[HomeBook]
  WHERE kid=4246 --classid in ("+classid+") 
   order by hbid desc
            
--�°�
ngbapp..[GetHomeBookList_all] 4246   -11

--��ȡ�༶��ҵʱ��
GetHomeBookList_All
GetTermList_All



--��ɰ� select distinct classid,classname,grade,term from  ebook..HB_HomeBook h  2011-0  2011-1 2012-0
homebookid,classid,classname,grade,term,createdate,childlist,theme    --8
--�ɰ�   select distinct classid,classname,grade,term from gbapp..[HomeBook]     2012-1 2013-0  2013-1 2014-0
hbid,garten_name,class_name,classid,term,createdate,cellsetid,kid,modulesetid,sectionsetid  --33
--�°�  select distinct classid,classname,grade,term from ngbapp..[HomeBook]     --2013-1 2014-0
h.hbid, h.term, ca.cname, h.cid,ca.grade gradeid,ca.isgraduate 

--select distinct term from basicdata..class_all order by term
--��ɰ� 
select distinct classid,classname,grade,term from  ebook..HB_HomeBook h
inner join BasicData./.  --2011-0  2011-1 2012-0
--�ɰ�   
select distinct kid,classid,class_name,grade_name,term from gbapp..[HomeBook]     --2012-1 2013-0  2013-1 2014-0
--�°�  
select distinct kid,cid,grade,term from ngbapp..[HomeBook]     --2013-1 2014-0

;with cet as(
select distinct classid,classname,grade,term 
from  ebook..HB_HomeBook h 
 where h.term='2011-0'
)
select count(1) --top 100 ca.*,'|',c.* 
 from BasicData..class_all ca 
  inner join cet c on c.term=ca.term
   and c.classname<>ca.cname
 where ca.term='2011-0'
 
 
 4209������Ӣ�������׶�԰  
 ��Х С����֮ǰ����B2���Ƶ�C2��� �༶��ҳ�����ݻ���ԭ��B2��ġ�

 select u.*,uc.* from BasicData..user_class uc
  inner join BasicData..[user] u 
   on uc.userid=u.userid where u.name='����' and u.kid=18487
 select * from BasicData..user_class_all uca inner join BasicData..[user] u 
   on uca.userid=u.userid where name='��Х' and kid=4209
   
   select* from BasicData..class where cid=56849 

Ī�� 13685419919  �����ʦ���˺ŵ�½�����԰��ϵ�ᣬ��ʾû�����ɼ�԰��ϵ�ᣬ�鷳��ѯ�¡�
select * from BasicData..[user] u 
where account ='13685419919'

select* from BasicData..user_class where userid=854366
























 --select substring(@va,9,1) + substring(@va,2,7) + substring(@va,1,1) +substring(@va,10,LEN(@va)-9)
    
 -- select top 100 substring(parpoint,9,1) + substring(parpoint,2,7) + substring(parpoint,1,1) +substring(parpoint,10,LEN(parpoint)-9),* from page_cell 
 --  where parpoint IS NOT NULL and parpoint <> '0,0,0,0,0,0,0,0,0,0'
   
 --   update  page_cell set parpoint= substring(parpoint,9,1) + substring(parpoint,2,7) + substring(parpoint,1,1) +substring(parpoint,10,LEN(parpoint)-9) 
 --  where parpoint IS NOT NULL and parpoint <> '0,0,0,0,0,0,0,0,0,0'
 -- select * into page_cell_20140709 from ngbapp..page_cell
  
