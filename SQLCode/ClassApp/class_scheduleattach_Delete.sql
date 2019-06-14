USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_scheduleattach_Delete]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：删除教学安排附件
--项目名称：ClassHomePage
--说明：
--时间：2009-1-6 22:35:44
------------------------------------
CREATE PROCEDURE [dbo].[class_scheduleattach_Delete]
@attachid int
 AS 
	DELETE [class_scheduleattach]
	 WHERE attachid=@attachid 
	
	IF @@ERROR <> 0 
	BEGIN 
	   RETURN(-1)
	END
	ELSE
	BEGIN
	   RETURN (1)
	END











GO
