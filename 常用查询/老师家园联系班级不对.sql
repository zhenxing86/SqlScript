--[20865]����ɽ�б���Ժ��ʦ�����Ƕ�У��С������������ʦ

http://hbapp.up139.zgyey.com/AdminDefault.aspx?uid=700241
http://hbapp.up139.zgyey.com/defaultv5.aspx


----------��ȡ��ʦ�ļ�԰��ϵ��-------------
ngbapp..GetHomeBookListByUserID
select h.hbid, h.term, ca.cname, h.cid           
from  HomeBook h            
 left join BasicData..class_all ca         
  on h.cid = ca.cid and h.term = ca.term     
   and ca.deletetag =1       
  left join basicdata..user_class_all uca         
   on ca.cid = uca.cid and ca.term = uca.term      
    and uca.deletetag =1          
where uca.userid = 700241     
--and h.term = @term            
 order by h.CrtDate desc 

-------------��ȡ��ʦ�İ༶��Ȼ���ʼ�������༶�ļ�԰��ϵ��------------------
select * from basicdata..[user_class] where userid=700241

----------��԰��ϵ��û�г�ʼ�� ngbapp..Init_GrowthBook ʧ��--------------
select * from HomeBook where cid in (select cid from basicdata..[user_class] where userid=700241)

----------�ð༶��û��С���ѣ��������ɼ�԰��ϵ��--------------------------
select * from BasicData.dbo.User_Child where cid=163124
exec Init_GrowthBook 163124, '2013-1' 


����Ա��
select * from BasicData..[user] where kid=20865 and name='������'

select * from BasicData..[class] where cid=163124
select * from BasicData..[class_all] where cid=163124 
select * from BasicData..[user_class] where userid=700241
select * from BasicData..[user_class_all] where userid=700241

155777
163124
