
--���༶���Ķ�̬
kmapp..km_postTwitterForClassPhoto_Add
--km_postTwitterForClassPhoto_Add 483064,620444,55002,'http://img2.yeyimg.com/','http://img2.yeyimg.com/','http://img2.yeyimg.com/','http://img2.yeyimg.com/',''   

14527�����������׶�԰��һ����ʦ15837128206�ϴ�����Ƭ������Ա�ڰ༶Ȧ���ﲻ�����¶�̬18737133516


--[20938]�����㲥���������׶�԰  ��������ʦ	'13699537776'	��������ʱ�����ϴ��༶��ᣬû����ʾ�ڰ༶Ȧ�Ķ�̬���档
2117758

select * from classapp..class_photos where albumid=932005

 select  classid ,*              
  from classapp..class_album                
   where albumid =932005
   
select * from BasicData..class where cid =143506
select * from BasicData..user_class where userid=2117758 and cid =143506

kmapp..km_getGroupTwitters 483064,55002,100,1 
http://img2.yeyimg.com/ClassAttachsFiles/20150923//5bedf21e-5824-4524-abec-c6ad31511666_small.jpg,http://img2.yeyimg.com/ClassAttachsFiles/20150923//685fa595-948c-4f83-85d7-3229b984eeb0_small.jpg,http://img2.yeyimg.com/ClassAttachsFiles/20150923//7959f5d9-e0f3-45ca-a776-eaf31558e826_small.jpg
Select *                                               
  From kmapp.dbo.twitter t                          
    left join BasicData..[user] u                          
      on t.userid = u.userid                    
    left join kmapp..km_user k                     
      on t.userid = k.userid                  
  Where t.deletetag = 1                          
    --and t.cid = 55002 
    and u.userid= 2117758 
    order by t.adddate
    
Select *                                               


select * from kmapp.dbo.twitter t where twrid in (   111922,129296,129298) 
update kmapp.dbo.twitter set content='��һ���ڡ��ۣ����㡷����ϴ�����Ƭ' where twrid =129298


select  *from BasicData..[user] where account='15837128206'
select  *from BasicData..[user_class] where userid=483064
select  *from BasicData..[class] where cid=55002
select   * from BasicData..[user] where userid= 883911
select   * from BasicData..user_bloguser  where bloguserid= 823933

http://m.class.zgyey.com/33298/scheduleview_s719124.html

update kmapp..twitter  set deletetag =1 where twrid =62373
    --��ѧ���� http://m.class.zgyey.com/33298/scheduleview_s710514.html  cid= 33298,scheduleid = 710514
select * from classapp..class_schedule where  scheduleid = 719124

--select  content=u2.name +'���˽�ѧ����',ub.userid, ub.*, t.*
----update t set content= u2.name +'���˽�ѧ����',userid= u2.userid 
--from dbo.twitter t  
--left join BasicData..[user] u                          
--      on t.userid = u.userid   
--      inner join BasicData..user_bloguser ub                          
--      on t.userid = ub.bloguserid 
--      inner join BasicData..[user] u2                          
--      on ub.userid = u2.userid     
--  Where t.deletetag = 1 and t.ftype=3                         
--    --and t.cid = 33298 and  t.userid=883911 and t.content =''  and u.name is null
--    and u.userid is null and ub.userid>0 order by adddate  
    
-- twitter ��userid ������bloguserid�����⡣
select  u2.userid,u2.name,t.*
--update t set content= u2.name +'���˽�ѧ����',userid= u2.userid 
 from kmapp.dbo.twitter t 
inner join basicdata..class c
 on t.cid = c.cid 
left join BasicData..[user] u
 on t.userid =u.userid and u.kid =c.kid
 
 inner join BasicData..user_bloguser ub                          
      on t.userid = ub.bloguserid 
      inner join BasicData..[user] u2                          
      on ub.userid = u2.userid and c.kid=u2.kid
      
 where t.ftype=3 and u.userid is null
 and t.cid =3036


select COUNT(1) -- content=u2.name +'���˽�ѧ����', t.*
from kmapp.dbo.twitter t
      left join BasicData..[user] u2                          
      on t.userid = u2.userid
      left join BasicData..user_class uc2
       on u2.userid = uc2.userid and t.cid = uc2.cid       
  Where t.deletetag = 1 and t.ftype=3                         
    --and t.cid = 33298 and  t.userid=883911 and t.content =''  and u.name is null
    and uc2.userid is null and  t.cid = 33298  order by adddate
    
    
    select * into twitter0916 from kmapp.dbo.twitter
    
    



 
 
