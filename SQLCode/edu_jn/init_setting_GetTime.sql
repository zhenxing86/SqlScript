USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[init_setting_GetTime]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[init_setting_GetTime] 
@areaid int
 AS   
BEGIN  
	select uptime from init_setting 
		where areaid=@areaid
  
END  
  

GO
