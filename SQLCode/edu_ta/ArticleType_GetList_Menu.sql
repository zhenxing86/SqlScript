USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[ArticleType_GetList_Menu]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：查询记录信息 
--项目名称：ArticleType
------------------------------------
CREATE PROCEDURE [dbo].[ArticleType_GetList_Menu]
@page int,
@size int,
@webDictID int , 
@parentid int=0
as
	SELECT 1, [ID], [orderby],[parentid],  [articleTypeName],   [describe],   [areaid],   [contentype],   icon,   [createtime],   [webDictID]   
	FROM [ArticleType]  
	where deletefag > 0 and [areaid]=@parentid order by [orderby]
	

	RETURN 0




GO
