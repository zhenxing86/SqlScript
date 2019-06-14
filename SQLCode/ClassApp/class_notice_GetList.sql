USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_notice_GetList]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途： 班级首页班级公告
--项目名称：ClassHomePage
--说明：
--时间：2009-1-20 10:24:28
------------------------------------
CREATE PROCEDURE [dbo].[class_notice_GetList]
@classid int
 AS 
	SELECT top(5)
	t1.noticeid,t1.title,t1.createdatetime
	 FROM class_notice t1 inner join class_notice_class t2 on t1.noticeid=t2.noticeid
	WHERE t2.classid=@classid AND t1.status=1
	ORDER BY t1.noticeid DESC






GO
