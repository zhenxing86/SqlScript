use ossapp
go
/*     
-- Author:  xzx        
-- Project: com.zgyey.ossapp        
-- Create date: 2014-12-16      
-- Description: ɾ���첨�豸��Ϣ        
   
tbdeviceinfo_DeleteTag 1 
   
*/      
CREATE PROCEDURE [dbo].[tbdeviceinfo_DeleteTag]            
@tbid int 
,@douserid int =0      
AS      
BEGIN  

update mcapp..tbdeviceinfo 
 set deletetag=0  
 where tbid=@tbid    
      
END      
    