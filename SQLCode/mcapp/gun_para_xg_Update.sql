USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[gun_para_xg_Update]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
-- =============================================  
-- Author:  xzx  
-- Project: com.zgyey.cardapp  
-- Create date: 2013-07-26  
-- Description: 修改晨检枪参数(修改)设备信息  
-- =============================================  
CREATE PROCEDURE [dbo].[gun_para_xg_Update]  
@id int  
,@status int  
  
   
AS  
BEGIN  
  
UPDATE [mcapp]..[gun_para_xg]  
 SET [status] = @status,download_date = case when @status=1 then getdate() when @status=2 then download_date end  
 ,upload_date = case when @status=2 then getdate() when @status=1 then upload_date end  
 WHERE id = @id  
END  
  

GO
