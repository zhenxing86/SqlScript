
--�Ҹղſ���2���׶�԰����԰��ϵ���ÿ�½�����û��2017��1�·ݵģ�������Ĭ��û�е���������Щ�׶�԰1�»����ϿΣ���Ҫ��д��




--11���׶�����Ŀ¼                        
 select * from ngbapp.dbo.fn_GetCellsetList('2019-0',28603)    
 select * from ngbapp.dbo.fn_GetCellsetList('2019-0',28603)                    
--12��ÿ�½���/�۲�����Ŀ¼                    
 select pos,title,months from ngbapp.dbo.fn_GetMonAdvList('2019-0',28603)  
 select * from ngbapp.dbo.fn_GetMonAdvList('2019-0',28603)     


SELECT * 
--update m set cellset='1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'
--update m set Monadvset='2,3,4,5,6'
FROM ngbapp..ModuleSet m where kid=28603 and term='2019-0'

insert into ngbapp..ModuleSet(kid, term, hbModList, gbModList, Monadvset, celltype, cellset)          
SELECT kid, term, hbModList, gbModList, '2,3,4,5,6', celltype, cellset FROM ngbapp.[dbo].fn_ModuleSet(28603,'2019-0')  

