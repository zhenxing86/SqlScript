USE [LibApp]
GO
/****** Object:  StoredProcedure [dbo].[lib_category_simple_GetList]    Script Date: 2014/11/24 23:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[lib_category_GetList]    Script Date: 02/19/2013 11:29:23 ******/



CREATE PROCEDURE [dbo].[lib_category_simple_GetList]
 @index_view int
 AS 

SELECT  [catid]    ,[cat_title]    ,[css_name]    ,[parentid],index_view,cat_py,book_css,book_count,book_url  	 FROM [lib_category]  where index_view=@index_view
order by [catid] asc



GO
