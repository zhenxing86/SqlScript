USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_messageboard_Delete]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：删除留言
--项目名称：zgyeyblog
--说明：
--时间：2008-10-01 13:57:24
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[blog_messageboard_Delete]
@messageboardid int
 AS 
	DELETE blog_messageboard
	 WHERE messageboardid=@messageboardid 

	IF @@ERROR <> 0 
	BEGIN 
	   RETURN(-1)
	END
	ELSE
	BEGIN
	   RETURN (1)
	END




GO
