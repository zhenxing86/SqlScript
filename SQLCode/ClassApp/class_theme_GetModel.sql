USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_theme_GetModel]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：取班级主页模板
--项目名称：classhomepage
--说明：
--时间：2009-5-15 09:55:19
------------------------------------
CREATE PROCEDURE [dbo].[class_theme_GetModel]
@classid int
AS
SELECT t2.classtheme FROM BasicData.dbo.class t1 INNER  JOIN KWebCMS.dbo.site_config t2 ON t1.kid=t2.siteid  WHERE t1.cid=@classid






GO
