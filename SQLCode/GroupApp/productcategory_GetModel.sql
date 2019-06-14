USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[productcategory_GetModel]    Script Date: 2014/11/24 23:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：得到商品分类实体对象的详细信息 
--项目名称：ServicePlatform
--说明：
--时间：2009-9-10 16:58:19
------------------------------------
CREATE PROCEDURE [dbo].[productcategory_GetModel]
@productcategoryid int
 AS 
	SELECT 
	productcategoryid,companyid,title,parentid,orderno,createdate,display
	 FROM [productcategory]
	 WHERE productcategoryid=@productcategoryid 

GO
