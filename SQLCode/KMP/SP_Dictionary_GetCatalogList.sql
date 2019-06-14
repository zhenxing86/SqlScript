USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[SP_Dictionary_GetCatalogList]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_Dictionary_GetCatalogList]
 AS 
	SELECT 
	[ID],[Caption],[Code],[Catalog]
	 FROM T_Dictionary WHERE Catalog = 0
GO
