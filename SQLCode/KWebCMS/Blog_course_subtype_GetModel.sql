USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[Blog_course_subtype_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Blog_course_subtype_GetModel]
@subtypeid int
AS
BEGIN
	SELECT subtypeid,title FROM resourceapp..course_subtype WHERE subtypeid=@subtypeid
END





GO
