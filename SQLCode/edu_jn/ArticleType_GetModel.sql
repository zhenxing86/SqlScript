USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[ArticleType_GetModel]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[ArticleType_GetModel]
@ID int
 AS 
	SELECT 
	1,ID,parentid,articleTypeName,describe,areaid,contentype,icon,createtime,webDictID,orderby,deletefag
	 FROM [ArticleType]
	 WHERE ID=@ID 









GO
