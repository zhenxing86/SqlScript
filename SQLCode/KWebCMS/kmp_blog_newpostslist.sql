USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_blog_newpostslist]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-06-03
-- Description:	GetBlogNewActionsTable
-- =============================================
CREATE PROCEDURE [dbo].[kmp_blog_newpostslist]
AS
BEGIN
	EXEC kmp..blog_newpostslist
END



GO
