USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[SiteUpdate]    Script Date: 2014/11/24 23:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		高老
-- Create date: 2010-7-28
-- Description:	站点修改
-- =============================================
CREATE PROCEDURE [dbo].[SiteUpdate]
@site_id int,
@site_name nvarchar(50)
AS
UPDATE
   sac_site
SET
   site_name=@site_name
WHERE
   site_id=@site_id
RETURN @@ROWCOUNT



GO
