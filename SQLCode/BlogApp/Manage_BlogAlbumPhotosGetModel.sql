USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[Manage_BlogAlbumPhotosGetModel]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：得到相片实体对象的详细信息 
--项目名称：Manage
--说明：
--时间：2009-7-14 14:50:00
------------------------------------
CREATE PROCEDURE [dbo].[Manage_BlogAlbumPhotosGetModel]
@photoid int
 AS 
	SELECT 
	photoid,categoriesid,title,filename,filepath,uploaddatetime
	 FROM album_photos
	 WHERE photoid=@photoid 


GO
