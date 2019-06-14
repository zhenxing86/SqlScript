USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[hc_vaccine_GetModel]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[hc_vaccine_GetModel]
@userid int,
@hid int  
AS  
BEGIN  
  
SET NOCOUNT ON;  

Select a.hid, a.[types], a.title, b.status, a.lv, a.descript 
  From hc_health a Left Join hc_user_health b on b.deletetag = 1 and a.hid = b.hid and b.userid = @userid
  Where a.deletetag = 1 and a.hid=@hid and a.custom_user = 0
   
END  


GO
