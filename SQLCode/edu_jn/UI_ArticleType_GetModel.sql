USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[UI_ArticleType_GetModel]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[UI_ArticleType_GetModel]
@ID int
 AS 

SELECT 
	0      ,[ID]    ,[parentid]    ,[articleTypeName]    ,[describe]    ,areaid    ,[contentype]    ,icon    ,[createtime]    ,[webDictID]    ,[orderby]    ,[deletefag]  	 FROM [ArticleType]  where deletefag=1
and ID=@ID
order by orderby









GO
