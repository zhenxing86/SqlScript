

7525	 �ʳ�����ҵ���׶�԰2015  �˺ţ�13675385775������ʦ�ġ�2015���10�·��׶����֣���������ǿհ׵ġ��������˻��棬�����������½���������ģ��鷳��������
http://hbapp.zgyey.com/v5/hb_edit.aspx?bid=291980&cid=123313
 
 select * from basicdata..class  where cid=134602
 select * from basicdata..class  where cid=134602   '13675385775'  userid=364346
 
 select * from basicdata..user_child where userid=2042326
 select * from basicdata..[user] where userid=2042326
 select * from basicdata..[user_class] where userid=2042326
 
  select * from ngbapp..homebook where cid=139846
 
ngbapp..gethomebook 292023

ngbapp..gethomebook 551445

'��Խ��'
 
select LEN('2,3,2,0,2,3,3,0,0,0')
select LEN('0,0,0,0,0,0,0,0,0,0')

select substring( '0,3,3,3,0,3,3,3,0,0,0',2,19)
7525


--�滻��,,��Ϊ��,��
   select pc.* --into page_cell_1015   
    --update  pc set TeaPoint= replace(TeaPoint,',,',',0,')
    from ngbapp..HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join ngbapp..GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term
     inner join ngbapp..diary d        
    on d.gbid = gb.gbid        
   inner join ngbapp..page_cell pc        
    on pc.diaryid = d.diaryid           
   --WHERE hb.hbid = 292023 
   where u.kid = 14331 and TeaPoint like '%,,%'

  select pc.* --into page_cell_1015   
    --update  pc set TeaPoint= '0'+TeaPoint
    from ngbapp..HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join ngbapp..GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term
     inner join ngbapp..diary d        
    on d.gbid = gb.gbid        
   inner join ngbapp..page_cell pc        
    on pc.diaryid = d.diaryid           
   --WHERE hb.hbid = 292023 
   where u.kid = 14331 and TeaPoint like ',%'
     
--������19���޸�Ϊ19   
    select substring( pc.TeaPoint,3,19),d.*,pc.*
    --update  pc set TeaPoint=substring( pc.TeaPoint,3,19)
    from ngbapp..HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join ngbapp..GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term
     inner join ngbapp..diary d        
    on d.gbid = gb.gbid        
   inner join ngbapp..page_cell pc        
    on pc.diaryid = d.diaryid           
   --WHERE hb.hbid = 292023 
   where u.kid = 14331 and  LEN(pc.TeaPoint)>19
   
   
   --update NGBApp..page_cell set TeaPoint='3,3,3,3,0,3,3,3,0,0' where diaryid =5466357
 --��С��19���޸�Ϊ19   
    select d.*,pc.* 
    --update  pc set TeaPoint='3'+TeaPoint
    from ngbapp..HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join ngbapp..GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term
     inner join ngbapp..diary d        
    on d.gbid = gb.gbid        
   inner join ngbapp..page_cell pc        
    on pc.diaryid = d.diaryid           
   --WHERE hb.hbid = 292023 and  LEN(pc.TeaPoint)=18 
   where u.kid = 14331 and LEN(pc.TeaPoint)=18 
   
   
--�׶�����

select d.author '��д��userid',*                    
  FROM diary d                          
   inner join page_cell pc                          
    on pc.diaryid = d.diaryid                          
  LEFT JOIN BasicData..[user] u                          
   on u.userid = d.Author                          
  where d.gbid = 22302436                          
  order by pc.title 
  
  
  select COUNT(d.diaryid) '��д����'    ,u.name '��ʦ',d.Author
  FROM [ngbapp]..diary d                             
  LEFT JOIN BasicData..[user] u                          
   on u.userid = d.Author                     
   inner join [ngbapp]..page_cell pc                          
    on pc.diaryid = d.diaryid                            
  where d.gbid 
  in(
  select distinct gb.gbid from [ngbapp]..growthbook gb
  join BasicData..User_Child uc on gb.userid = uc.userid
   where gb.term = '2016-0'
  and uc.kid = 26490)
  --and d.Author is null
  group by d.Author ,u.name
  --order by pc.title 
  
  
  ngbapp..dbo.page_cell_Edit
--------------------------------------------------

   select pc.* --into page_cell_1015   
    --update  pc set TeaPoint= replace(TeaPoint,',,',',0,')
    from ngbapp..HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join ngbapp..GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term
     inner join ngbapp..diary d        
    on d.gbid = gb.gbid        
   inner join ngbapp..page_cell pc        
    on pc.diaryid = d.diaryid           
   --WHERE hb.hbid = 292023 
   where u.kid = 14331 and hb.term='2017-1'
  
  
  