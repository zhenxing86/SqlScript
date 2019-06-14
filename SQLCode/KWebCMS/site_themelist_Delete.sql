USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_themelist_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-14
-- Description:	Delete
-- =============================================
CREATE PROCEDURE [dbo].[site_themelist_Delete]
@themeid int
AS
BEGIN
	DELETE site_themelist WHERE themeid=@themeid

	IF @@ERROR <> 0
	BEGIN
		RETURN 0
	END
	ELSE
	BEGIN
		RETURN 1
	END
END



GO
