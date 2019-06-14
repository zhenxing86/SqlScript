USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[product_category_Update]    Script Date: 08/28/2013 14:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：商家商品归类 
--项目名称：ServicePlatform
--说明：
--时间：2010-01-26 10:00:40
------------------------------------
CREATE PROCEDURE [dbo].[product_category_Update]
@productid int,
@productcategoryid int
 AS 
	UPDATE product SET productcategoryid=@productcategoryid WHERE productid=@productid

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END
GO
