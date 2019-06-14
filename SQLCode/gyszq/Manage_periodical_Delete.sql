USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[Manage_periodical_Delete]    Script Date: 08/28/2013 14:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：删除期刊 
--项目名称：ServicePlatformManage
--说明：
--时间：2010-4-20 10:24:40
------------------------------------
CREATE PROCEDURE [dbo].[Manage_periodical_Delete]
@periodicalid int
 AS 
	UPDATE [periodical] SET status=-1
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
