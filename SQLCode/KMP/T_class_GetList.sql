USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[T_class_GetList]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：取班级列表
--项目名称：ClassHomePage
--说明：
--时间：2009-2-19 17:09:59
------------------------------------
CREATE PROCEDURE [dbo].[T_class_GetList]
@kid int
 AS 
	SELECT id,[name] FROM T_class WHERE kindergartenid=@kid and status=1 ORDER BY classgrade,[order]



GO
