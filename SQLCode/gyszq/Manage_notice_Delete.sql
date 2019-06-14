USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[Manage_notice_Delete]    Script Date: 08/28/2013 14:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：删除通知 
--项目名称：ServicePlatformManage
--说明：
--时间：2010-2-23 16:50:46
------------------------------------
CREATE PROCEDURE [dbo].[Manage_notice_Delete]
@noticeid int
 AS 
	UPDATE [notice] SET status=-1 WHERE noticeid=@noticeid

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END
GO
