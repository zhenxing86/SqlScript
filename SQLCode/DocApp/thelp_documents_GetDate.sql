USE [DocApp]
GO
/****** Object:  StoredProcedure [dbo].[thelp_documents_GetDate]    Script Date: 2014/11/24 23:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：查询文档时间
--项目名称：zgyeyblog
--说明：
--时间：2010-09-27 22:36:39
------------------------------------
CREATE PROCEDURE [dbo].[thelp_documents_GetDate]
@userid int
AS
SELECT YEAR(createdatetime)as documentyear,COUNT(1) as documentcount  FROM thelp_documents WHERE deletetag=1 and userid=@userid GROUP BY YEAR(createdatetime) ORDER BY documentyear








GO
