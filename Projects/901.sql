

select  * 
-- update c set title = replace(title,'�����е�һ�׶�԰','���������׶�԰')
 from KWebCMS..cms_content c where siteid=28277 and title like '%�����е�һ�׶�԰%'
select  * 
--update c set content = REPLACE(cast(content AS varchar(8000)),'�����׶�԰','�����е�һ�׶�԰')
from KWebCMS..cms_content c where siteid=28277 and content like '%�����׶�԰%'


update c set content = REPLACE(cast(content AS varchar(8000)),'�����е�һ�׶�԰','���������׶�԰')
from KWebCMS..cms_content c where siteid=28277 and content like '%�����е�һ�׶�԰%'


select *
--update k set invoicetitle='���������׶�԰'  --���������׶�԰
 from ossapp..kinbaseinfo k where kid = 28277
 
 select *
--update k set invoicetitle='���������׶�԰'  --���������׶�԰
 from basicdata..kindergarten k where kid = 28277
 
  select *
--update s set shortname='�����׶�԰'  --�����׶�԰
 from kwebcms..site_config s where siteid = 28277
 
   select *
--update s set shortname='�����׶�԰'  --�����׶�԰
 from kwebcms..site s where siteid = 28277
 
 
 