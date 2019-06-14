USE [SBApp]
GO
/****** Object:  StoredProcedure [dbo].[lib_category_GetList]    Script Date: 2014/11/24 23:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[lib_category_GetList]
 @index_view int
 AS 

SELECT  [catid]    ,[cat_title]    ,[css_name]    ,[parentid],index_view,cat_py,book_css,book_count,book_url  	 FROM [lib_category]  where index_view=@index_view
order by [catid] asc



GO
