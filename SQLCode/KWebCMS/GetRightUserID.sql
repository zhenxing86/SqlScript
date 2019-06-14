USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[GetRightUserID]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		liaoxin
-- Create date: 2010-8-18
-- Description:	业务站点用户ID 取道权限系统里的ID
-- =============================================
CREATE PROCEDURE   [dbo].[GetRightUserID]
@userid int
AS
BEGIN
select uid from site_user where userid=@userid
END

GO
