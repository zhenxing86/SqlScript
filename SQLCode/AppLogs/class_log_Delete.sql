USE [AppLogs]
GO
/****** Object:  StoredProcedure [dbo].[class_log_Delete]    Script Date: 2014/11/24 21:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：判断是否有此日志
--项目名称：
--说明：
--时间：2011-7-1 15:29:16
------------------------------------
CREATE PROCEDURE [dbo].[class_log_Delete]
@actionuserid int,
@actiontypeid int,
@actionobjectid int
 AS 
 	delete class_log where actionuserid=@actionuserid and actiontypeid=@actiontypeid and actionobjectid=@actionobjectid
 	--delete class_new_actionlogs where actionuserid=@actionuserid and actiontypeid=@actiontypeid and actionobjectid=@actionobjectid

--select count(1) from class_log
	
	IF(@@error<>0)
	BEGIN
		RETURN (1)
	END
	ELSE
	BEGIN
		RETURN (-1)
	END


GO
