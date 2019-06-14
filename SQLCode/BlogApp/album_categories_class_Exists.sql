USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[album_categories_class_Exists]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途: 相册是否所有班级显示
--项目名称：BLOG
--说明：
--时间：2009-6-18 11:50:29
------------------------------------
CREATE PROCEDURE [dbo].[album_categories_class_Exists]
@categoriesid int
AS 
	DECLARE @count int
	SELECT @count=count(1) FROM album_categories_class WHERE categoriesid=@categoriesid

	IF @count > 1 
	BEGIN 		
		RETURN (1)
	END
	ELSE
	BEGIN		
	    RETURN (0)
	END	




GO
