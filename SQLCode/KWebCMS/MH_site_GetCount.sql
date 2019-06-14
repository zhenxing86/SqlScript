USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[MH_site_GetCount]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		hanbin
-- Create date: 2009-03-26
-- Description:	GetCount
-- =============================================
CREATE PROCEDURE [dbo].[MH_site_GetCount]
AS
BEGIN
	DECLARE @count int
	SELECT @count=count(*) FROM site WHERE status=1
	RETURN @count
END


GO
