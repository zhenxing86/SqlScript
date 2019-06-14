USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[doc_Categories_Get]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE   PROCEDURE [dbo].[doc_Categories_Get]

AS

SET Transaction Isolation Level Read UNCOMMITTED

SELECT
	C.CategoryID, C.Name, C.IsEnabled, C.ParentID, C.Path, C.Description,
	C.TotalDocThreads, C.TotalDocSubThreads, C.DateCreated, C.KID
FROM doc_Categories C







GO
