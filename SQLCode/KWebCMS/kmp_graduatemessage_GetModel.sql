USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_graduatemessage_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		hanbin
-- Create date: 2009-06-11
-- Description:	GetModel
-- =============================================
CREATE PROCEDURE [dbo].[kmp_graduatemessage_GetModel]
@id int
AS
BEGIN
	SELECT [id],[kid] as SiteId,[content],[title],[createdate],[ip],[status],[username],[e_mail],[contractphone],[address],[categorytype],[parentid]
	FROM kmp..GraduateMessage WHERE id=@id
END




GO
