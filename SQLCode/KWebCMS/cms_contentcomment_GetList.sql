USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_contentcomment_GetList]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cms_contentcomment_GetList]
 AS 
	SELECT 
	[contentcommentid],[contentid],[content],[author],[fromip],[orderno],[createdatetime],[abet],[against],[parentid]
	 FROM cms_contentcomment




GO
