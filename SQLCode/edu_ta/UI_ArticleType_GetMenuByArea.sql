USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[UI_ArticleType_GetMenuByArea]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[UI_ArticleType_GetMenuByArea]
@level int
,@webDictID int
 AS 

SELECT 
	0      ,[ID]    ,[parentid]    ,[articleTypeName]    ,[describe]    ,[level]    ,[contentype]    ,[createuserid]    ,[createtime]    ,[webDictID]    ,[orderby]    ,[deletefag]  	 FROM [ArticleType]  where deletefag=1
 and [level]=@level and webDictID=@webDictID
order by orderby







GO
