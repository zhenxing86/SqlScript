USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kweb_contentpaging_GetListByContentID]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-16
-- Description:	GetList
-- =============================================
CREATE PROCEDURE [dbo].[kweb_contentpaging_GetListByContentID]
@contentid int
AS
BEGIN
	SELECT pagingid,contentid,[content],createdate 
	FROM cms_contentpaging
	WHERE contentid=@contentid
END



GO
