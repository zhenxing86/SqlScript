USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[album_categories_class_Delete]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途: 删除相册班级显示
--项目名称：BLOG
--说明：
--时间：2009-6-18 11:50:29
------------------------------------
CREATE PROCEDURE [dbo].[album_categories_class_Delete]
@categoriesid int,
@classid int
AS 
	DELETE album_categories_class WHERE categoriesid=@categoriesid --and classid=@classid


	IF @@ERROR <> 0 
	BEGIN 	
		RETURN(-1)
	END
	ELSE
	BEGIN	
	    RETURN 1
	END	






GO
