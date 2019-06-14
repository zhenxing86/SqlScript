USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[portal_href_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-03-25
-- Description:	Delete
-- =============================================
CREATE PROCEDURE [dbo].[portal_href_Delete]
@id int
AS
BEGIN
	
	DELETE portal_href WHERE id=@id
	
	IF @@ERROR <> 0
	BEGIN
		RETURN 0
	END
	ELSE
	BEGIN
		RETURN @@IDENTITY
	END
END



GO
