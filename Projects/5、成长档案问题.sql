[14917]���϶��������Ź�˾�׶�԰   ԰����Ӫ������10�·�������׶����� δ��������1�����ǵ㿪��ϸ�����Կ�����6��С����û��������ʦ˵�������ˡ�
�鷳��ѯ����һ�¡�лл

http://rep.zgyey.com/OHB/NHBCellViewer002/283344?i=1&t=1&h=283344&tit=2015%E5%B9%B410%E6%9C%88&index=1

http://hbapp.zgyey.com/v5/hb_edit.aspx?bid=291980&cid=123313

14331	 �ʳ�����ҵ���׶�԰2015  �˺ţ�13675385775������ʦ�ġ�2015���10�·��׶����֣���������ǿհ׵ġ��������˻��棬�����������½���������ģ��鷳��������

gethomebook  283344

select * from basicdata..[user] where account='13675385775'

select  *  from [ngbapp]..diary_page_cell 
where gbid in (
          select distinct gbid from [ngbapp]..growthbook gb   
			left join BasicData..[user] u
				on gb.userid = u.userid
			left join BasicData..user_class uc
			   on u.userid = uc.userid
			   where u.kid =  14331
				 and uc.cid = 123313 
				 and gb.term = '2015-1'
				  and gb.userid in (930072,930071,930058,930073,930075,930085)
				  )
     and title = 1
     --and pagetplid =2
  order by gbid ,title


update pc set parpoint='3,3,3,3,3,3,3,3,0,0',parword='�ڼ�����������ι���Ĵ��������ˣ�������һ��ʱ�䲻ϲ��ȥ�׶�԰������ԭ��˵�ǲ������μ�٣�Ҳ���½����£��ڼҽ�����ͦ���ģ������ͣ�ϣ�����ӽ�����' 
from page_cell pc where diaryid=6436729

delete diary where diaryid=6399084

select * from BasicData..User_Child where userid=930075  -- 930072   gbid=28362233 cid=101676 
select * from BasicData..User_Child where userid=930075 
select  *from BasicData..User_Child where userid in (930072,930071,930058,930073,930075,930085)

--select * from basicdata..[user] where userid=376478

;with cet as(
 SELECT gb.gbid, gb.userid, u.name              
  from HomeBook hb        
    inner join BasicData..class_all ca         
    on hb.cid = ca.cid and hb.term=ca.term and ca.deletetag =1     
    inner join BasicData..user_class_all uca        
     on ca.cid = uca.cid and uca.term=ca.term and uca.deletetag=1       
    inner join BasicData..[user] u        
     on u.userid = uca.userid        
     and u.deletetag = 1        
     and u.usertype = 0        
    inner join GrowthBook gb        
     on gb.userid = u.userid        
     and gb.term = hb.term          
   --WHERE hb.hbid = 283344  and u.userid in (930072,930071,930058,930073,930075,930085) 
   WHERE hb.hbid = 283946 --and userid = 
)
 select gb.gbid, d.*, gb.userid, pc.*       
  FROM cet gb         
   inner join diary d        
    on d.gbid = gb.gbid        
   inner join page_cell pc        
    on pc.diaryid = d.diaryid   
    where pc.title=4

select  * from GrowthBook where gbid=28324521