USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure] 
         AS
         SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification   
GO
