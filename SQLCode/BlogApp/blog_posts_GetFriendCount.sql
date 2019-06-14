USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_posts_GetFriendCount]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：好友日记文章总数
--项目名称：zgyeyblog
--说明：
--时间：2008-11-01 12:05:19
------------------------------------
CREATE PROCEDURE [dbo].[blog_posts_GetFriendCount]
@userid int
 AS 
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM  blog_posts t1 inner join blog_friendlist t2 on t1.userid=t2.frienduserid WHERE t2.userid=@userid and t1.deletetag=1
	RETURN @TempID	




GO
