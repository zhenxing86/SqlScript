USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[album_photos_Update]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


------------------------------------
--用途：修改相片描述
--项目名称：ZGYEYBLOG
--说明：
--时间：2008-10-06 14:50:00
------------------------------------
CREATE PROCEDURE [dbo].[album_photos_Update]
@photoid int,
@categoriesid int,
@title nvarchar(100)
 AS 
	UPDATE album_photos SET 
	[categoriesid] = @categoriesid,[title] = @title
	WHERE photoid=@photoid 

	IF @@ERROR <> 0 
	BEGIN 		
	   RETURN(-1)
	END
	ELSE
	BEGIN		
	   RETURN (1)
	END





GO
