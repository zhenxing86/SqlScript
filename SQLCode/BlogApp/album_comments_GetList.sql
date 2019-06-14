USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[album_comments_GetList]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：取评论列表
--项目名称：zgyeyblog
--说明：
--时间：2008-09-29 07:54:31
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[album_comments_GetList]
	@photoid int
 AS 
	SELECT 
	photocommentid,photoid,userid,author,content,commentdatetime,parentid
	 FROM album_comments
	WHERE photoid=@photoid
	order by commentdatetime desc






GO
