USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[Blog_course_type_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Blog_course_type_GetModel]
@id int
AS
BEGIN
	SELECT id,title FROM resourceapp..course_type WHERE id=@id
END





GO
