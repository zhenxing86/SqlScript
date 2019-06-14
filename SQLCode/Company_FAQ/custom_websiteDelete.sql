USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[custom_websiteDelete]    Script Date: 2014/11/24 22:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		张启平
-- Create date: 2010-7-22
-- Description:	实现建站收费信息删除
-- =============================================
CREATE PROCEDURE [dbo].[custom_websiteDelete]
@webSiteID int
AS
DELETE FROM
    custom_webSite
WHERE
    webSiteID=@webSiteID
RETURN @@ROWCOUNT


GO
