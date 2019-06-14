USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[Manage_periodical_GetList]    Script Date: 08/28/2013 14:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：查询记录信息期刊 
--项目名称：ServicePlatformManage
--说明：
--时间：2010-4-20 10:24:40
------------------------------------
CREATE PROCEDURE [dbo].[Manage_periodical_GetList]
 AS 
	SELECT 
	periodicalid,title,createdatetime,status
	 FROM [periodical] WHERE status=1 ORDER BY createdatetime DESC
GO
