USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_album_qt_GetCount]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：取相册总数
--项目名称：ClassHomePage
--说明：
--时间：2009-1-6 11:50:29
------------------------------------
CREATE PROCEDURE [dbo].[class_album_qt_GetCount]
@classid int
 AS 

	declare @count1 int

	SELECT @count1=count(1) FROM v_album WHERE classid=@classid
    return @count1









GO
