use ossapp
go
/* 
-- Author:  xzx    
-- Project: com.zgyey.ossapp    
-- Create date: 2013-06-08    
-- Description: ����id��ȡ�豸��Ϣ    

tbdeviceinfo_GetModel 1

*/    
CREATE PROCEDURE [dbo].[tbdeviceinfo_GetModel]    
@tbid int    
AS    
BEGIN    
    
 select tbid,tbdevid,kid,ipaddress,port,exegroup     
    from mcapp..tbdeviceinfo     
    where tbid = @tbid    
END    
  
go