  -- =============================================  
-- Author:  xzx  
-- Project: com.zgyey.ossapp  
-- Create date: 2013-06-08  
-- Description: �����豸��Ϣ  
-- =============================================  
create PROCEDURE [dbo].[deviceinfo_UpdateVersion]  
@devid nvarchar(9),  
@firmw nvarchar(150),  
@daddr nvarchar(150),  
@pcfirmw nvarchar(150),  
@pcdaddr nvarchar(150),
@vtype int --0:�̼��汾��1��pc�˰汾
AS  
BEGIN  
  
if(@vtype=0)
 update mcapp..driveinfo   
 set firmw=@firmw,daddr=@daddr
    where devid = @devid  
else if(@vtype=1)
	update mcapp..driveinfo   
	 set pcfirmw=@pcfirmw,pcdaddr=@pcdaddr
		where devid = @devid  
      
 exec config_manage_Update 9,1  --���»���
END  


cardinfo_getlist_all