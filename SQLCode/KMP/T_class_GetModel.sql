USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[T_class_GetModel]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：修改班级论坛内容 
--项目名称：ClassHomePage
--说明：
--时间：2009-2-19 17:09:59
------------------------------------
CREATE PROCEDURE [dbo].[T_class_GetModel]
@classid int
 AS 
	SELECT id,[name],code,classgrade FROM T_class WHERE id=@classid	

GO
