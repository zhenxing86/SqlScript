USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_menu_GetListByUserID]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-01-20
-- Description:	获取单个用户的菜单
-- =============================================
CREATE PROCEDURE [dbo].[site_menu_GetListByUserID]
@userid int
AS
BEGIN
	SELECT * FROM site_menu WHERE menuid in (SELECT menuid FROM site_usermenu WHERE userid=@userid) ORDER BY orderno desc
END



GO
