USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_microvideo_GetModel]    Script Date: 2014/11/24 23:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
------------------------------------  
--用途：获取专家讲坛信息  
--项目名称：家庭教育中心 com.zgyey.fmcapp.cms    
--说明:   
--时间：2013-6-17 15:50:29  
--exec fmc_microvideo_GetModel 1  
------------------------------------  
CREATE PROCEDURE [dbo].[fmc_microvideo_GetModel]  
@id int  
 AS   
 SELECT 1,[ID],title,describe,smallimg,url,[uid],intime,click,deletetag,freetag,mp4url,ownurl,ownmp4url,mobilepicurl  
  FROM [fmc_microvideo]  
  WHERE ID=@id  
  
GO
