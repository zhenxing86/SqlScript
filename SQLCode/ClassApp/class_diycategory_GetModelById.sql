USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_diycategory_GetModelById]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：取班级主页中个性化目录
--项目名称：classhomepage
--说明：
--时间：2009-5-1809:55:19
------------------------------------
CREATE PROCEDURE [dbo].[class_diycategory_GetModelById]
@diycategoryid int
AS
SELECT diycategoryid,title,kid FROM ClassApp.dbo.class_diycategory WHERE diycategoryid=@diycategoryid
GO
