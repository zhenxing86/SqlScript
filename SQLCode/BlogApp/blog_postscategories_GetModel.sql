USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_postscategories_GetModel]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：得到日志分类实休信息 
--项目名称：zgyeyblog
--说明：
--时间：2008-09-30 22:57:13
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[blog_postscategories_GetModel]
@categoresid int
 AS 
	SELECT 
	categoresid,userid,title,description,displayorder,postcount
	 FROM blog_postscategories
	 WHERE categoresid=@categoresid






GO
