use BasicData 
go
/*------------------------------------          
--���ߣ� xie        
--˵���� �ж�Ҫ��԰��С���ѣ�֮ǰ�İ༶�Ƿ���ڡ�    
--ʱ�䣺2014-12-03 11:00:46          
memo:   
 
declare @ret int =0      
 exec @ret = [ClassExists] 810473   
 select @ret     
------------------------------------*/          
CREATE PROCEDURE [dbo].[ClassExists]          
 @userid  int       
 AS           
BEGIN          
 SET NOCOUNT ON    
 
 declare @ret int = 0
 select @ret = COUNT(1) from leave_user_class luc
  inner join class c 
   on luc.cid= c.cid and c.deletetag=1
  where luc.userid=@userid
    
  Return @ret
          
END 