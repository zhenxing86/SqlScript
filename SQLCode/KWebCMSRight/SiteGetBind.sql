USE [KWebCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[SiteGetBind]    Script Date: 05/14/2013 14:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途:  站点绑定
--项目名称：Right
--说明：
--时间：2010-3-31 17:49:11
------------------------------------
CREATE PROCEDURE [dbo].[SiteGetBind]
 AS 
	SELECT 	site_id,site_name FROM [sac_site]
GO
