USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_video_GetCountByKid]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





------------------------------------
--用途：取视频数 
--项目名称：ClassHomePage
--说明：
--时间：2009-1-6 15:18:06
------------------------------------
CREATE PROCEDURE [dbo].[class_video_GetCountByKid]
@kid int
 AS
	DECLARE @count int
	SELECT @count=count(1) FROM class_video where kid=@kid and status=1
	RETURN @count





--select top 1 * from class_video


GO
