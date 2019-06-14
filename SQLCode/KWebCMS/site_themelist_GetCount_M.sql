USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_themelist_GetCount_M]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-15
-- Description:	GetCount 公共模板总数
-- =============================================
CREATE PROCEDURE [dbo].[site_themelist_GetCount_M]
@theme_categoryid_id int
AS
BEGIN
	DECLARE @count int
	SELECT @count=count(*) FROM site_themelist WHERE siteid=0 AND status=1 and theme_category_id=@theme_categoryid_id
	RETURN @count
END








GO
