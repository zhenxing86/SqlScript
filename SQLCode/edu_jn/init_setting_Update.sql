USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[init_setting_Update]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[init_setting_Update] 
@areaid int,
@uptime datetime
 AS   
BEGIN  
	update init_setting  
		set uptime=@uptime 
	where areaid=@areaid
	
  exec init_lxq
END  
  

GO
