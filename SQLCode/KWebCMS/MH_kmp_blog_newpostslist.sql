USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[MH_kmp_blog_newpostslist]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-03-26
-- Description:	GetBlogNewActionsTable
-- =============================================
CREATE PROCEDURE [dbo].[MH_kmp_blog_newpostslist]
AS
BEGIN
	EXEC kmp..blog_newpostslist
END



GO
