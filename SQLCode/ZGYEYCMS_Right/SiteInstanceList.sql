USE [ZGYEYCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[SiteInstanceList]    Script Date: 05/14/2013 14:58:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		gaolao
-- Create date: 2010-11-1
-- Description:	获取所有站点
-- =============================================
CREATE PROCEDURE [dbo].[SiteInstanceList]

AS
BEGIN
 SELECT
   site_instance_id,site_instance_name
 FROM
   sac_site_instance
END
GO
