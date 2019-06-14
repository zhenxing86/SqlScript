USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_articleattachs_Delete]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：删除班级文章附件
--项目名称：ClassHomePage
--说明：
--时间：2009-5-13 14:43:20
------------------------------------
CREATE PROCEDURE [dbo].[class_articleattachs_Delete]
@attachid int
 AS 

	UPDATE class_articleattachs SET status=-1 WHERE attachid=@attachid
	
	IF @@ERROR <> 0 
	BEGIN 
	   RETURN(-1)
	END
	ELSE
	BEGIN
	   RETURN (1)
	END




GO
