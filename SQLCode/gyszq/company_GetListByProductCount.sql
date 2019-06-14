USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[company_GetListByProductCount]    Script Date: 08/28/2013 14:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：取商家信息
--项目名称：ServicePlatform
--说明：
--时间：-2-25 9:56:53
------------------------------------
CREATE PROCEDURE [dbo].[company_GetListByProductCount]
@count INT
 AS 
	SELECT TOP(@count) companyid,companyname,shortname,productscount FROM  company ORDER BY productscount DESC
GO
