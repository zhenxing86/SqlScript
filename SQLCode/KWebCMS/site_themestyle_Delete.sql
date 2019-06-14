USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_themestyle_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-15
-- Description:	Delete
-- =============================================
CREATE PROCEDURE [dbo].[site_themestyle_Delete]
@styleid int
AS
BEGIN
	DELETE site_themestyle WHERE styleid=@styleid

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
