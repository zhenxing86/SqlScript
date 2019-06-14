USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_articlecomments_GetCount]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：取班级文章评论总数
--项目名称：ClassHomePage
--说明：
--时间：2009-5-13 14:43:20
------------------------------------
create PROCEDURE [dbo].[class_articlecomments_GetCount]
@articleid int
 AS 
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM class_articlecomments WHERE articleid=@articleid and status=1
	RETURN @TempID	



GO
