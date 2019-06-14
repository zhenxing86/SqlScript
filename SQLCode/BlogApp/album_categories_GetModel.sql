USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[album_categories_GetModel]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：得到相册分类
--项目名称：zgyeyblog
--说明：
--时间：2008-09-28 22:56:46
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[album_categories_GetModel]
@categoriesid int
 AS 
	SELECT 
	categoriesid,userid,title,description,displayorder,albumdispstatus,photocount,createdatetime,isclassdisplay,classid,viewpermission
	 FROM album_categories
	 WHERE categoriesid=@categoriesid 





GO
