USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[Blog_course_type_GetList]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- ALTER date: 2009-03-28
-- Description:	GetList
-- =============================================
create PROCEDURE [dbo].[Blog_course_type_GetList]
AS
BEGIN
	SELECT id,title FROM resourceapp..course_type
END





GO
