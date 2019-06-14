USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_friendlist_Delete]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：删除好友
--项目名称：ZGYEYBLOG
--说明：
--时间：2009-4-24 16:11:05
------------------------------------
CREATE PROCEDURE [dbo].[blog_friendlist_Delete]
@userid int,
@frienduserid int
 AS 
	DELETE blog_friendlist WHERE [userid]=@userid and [frienduserid]=@frienduserid

	IF(@@ERROR<>0)
	BEGIN
		RETURN (-1)
	END
	ELSE
	BEGIN
		RETURN (1)
	END





GO
