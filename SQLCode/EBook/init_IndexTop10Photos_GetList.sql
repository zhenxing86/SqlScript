USE [edu_dx]
GO
/****** Object:  StoredProcedure [dbo].[init_IndexTop10Photos_GetList]    Script Date: 2014/11/24 23:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[init_IndexTop10Photos_GetList]
 AS 
	SELECT 
	       [albumid]    ,[title]    ,[coverphoto]    ,[coverphotodatetime]    ,[net]    ,[kname]  	 FROM [IndexTop10Photos]
	


GO
