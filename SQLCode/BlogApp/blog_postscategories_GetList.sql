USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_postscategories_GetList]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：取日志分类列表
--项目名称：zgyeyblog
--说明：
--时间：2008-09-30 22:57:13
--作者：[blog_postscategories_GetList] 11163
------------------------------------
CREATE PROCEDURE [dbo].[blog_postscategories_GetList]
@userid int
 AS 
	SELECT 
	categoresid,userid,title,description,displayorder,
	(select COUNT(postid) from blog_posts p 
	where p.categoriesid=bp.categoresid
	and p.deletetag=1 and p.poststatus=1) as postcount
	 FROM blog_postscategories bp
	 WHERE userid=@userid






GO
