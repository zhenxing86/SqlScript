USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[Manage_periodical_Update]    Script Date: 2014/11/24 23:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：修改期刊 
--项目名称：ServicePlatformManage
--说明：
--时间：2010-4-20 10:24:40
------------------------------------
CREATE PROCEDURE [dbo].[Manage_periodical_Update]
@periodicalid int,
@title nvarchar(50)
 AS 
	UPDATE [periodical] SET 
	[title] = @title
	WHERE periodicalid=@periodicalid 

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END

GO
