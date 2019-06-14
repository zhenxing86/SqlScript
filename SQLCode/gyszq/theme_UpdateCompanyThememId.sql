USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[theme_UpdateCompanyThememId]    Script Date: 08/28/2013 14:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：更新商家模板id 
--项目名称：ServicePlatform
--说明：
--时间：2010-02-18 16:28:40
------------------------------------
CREATE PROCEDURE [dbo].[theme_UpdateCompanyThememId]
@companyid int,
@themeid int
AS 
	UPDATE company SET themeid=@themeid WHERE companyid=@companyid

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END
GO
