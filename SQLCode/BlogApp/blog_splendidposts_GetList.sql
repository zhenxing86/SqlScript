USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_splendidposts_GetList]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：热门精彩日志
--项目名称：ZGYEYBLOG
--说明：
--时间：2009-5-12 10:37:29
------------------------------------
CREATE PROCEDURE [dbo].[blog_splendidposts_GetList]
@usertype int
 AS 
	SELECT 	t1.postid,t1.author,t1.userid,t1.title,t1.content 
	FROM blog_posts t1 INNER JOIN blog_splendidposts t2 ON t1.postid=t2.postid
	WHERE t2.usertype=@usertype and t1.deletetag=1





GO
