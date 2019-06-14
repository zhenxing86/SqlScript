USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[Dict_GetByCatalog]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Dict_GetByCatalog]
@Catalog varchar(100)
 AS 
select 0,0,'请选择...',@Catalog
union all
	SELECT 
	 1      ,ID    ,Caption    ,[Catalog]  	 FROM [Dict]
	 WHERE [Catalog]=@Catalog 



GO
