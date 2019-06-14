use BasicData 
go
/*  
-- Author:      xie  
-- Create date: 2013-12-20  
-- Description:   
-- Memo:   
 classinfo_rollback 12511, '81604'
   
*/  
alter PROCEDURE [dbo].[classinfo_rollback]  
 @kid int,  
 @str varchar(8000)
as    
BEGIN   
 SET NOCOUNT ON  
 
  CREATE TABLE #ClassID(col nvarchar(40))  
  INSERT INTO #ClassID  
    select distinct col  --�������ַ���ת��Ϊ�б�  
    from BasicData.dbo.f_split(@str,',')  
   
  update c set deletetag=1  
   FROM class c   
   inner join #ClassID ci   
    on c.cid = ci.col  
    and c.kid = @kid   
    and c.deletetag=0


  IF @@ROWCOUNT = 0  
  return -1    
  else      
  return 1     
  
END  


