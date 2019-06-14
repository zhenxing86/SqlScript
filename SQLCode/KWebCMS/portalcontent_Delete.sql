USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[portalcontent_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-07-03
-- Description:	Delete
-- =============================================
CREATE PROCEDURE [dbo].[portalcontent_Delete]
@contentid int
AS
BEGIN
	DELETE portalcontent WHERE contentid=@contentid

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
