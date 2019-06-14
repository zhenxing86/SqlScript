USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[kin_doc_category_GetModel]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：得到幼儿园共享分类详细信息 
--项目名称：BLOG
--说明：
--时间：2009-6-27 16:22:32
------------------------------------
CREATE PROCEDURE [dbo].[kin_doc_category_GetModel]
@kincategoryid int
 AS 
	SELECT 
	kincategoryid,parentid,title,kid,description,documentcount,createdatetime
	 FROM [kin_doc_category]
	 WHERE kincategoryid=@kincategoryid 






GO
