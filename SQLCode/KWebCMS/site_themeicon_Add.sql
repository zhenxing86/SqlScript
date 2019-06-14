USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_themeicon_Add]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-14
-- Description:	Add
-- =============================================
CREATE PROCEDURE [dbo].[site_themeicon_Add]
@themeid int,
@title nvarchar(30),
@thumbpath nvarchar(200)
AS
BEGIN
	INSERT site_themeicon(themeid,title,thumbpath,createdatetime)
	VALUES (@themeid,@title,@thumbpath,GETDATE())
END





GO
