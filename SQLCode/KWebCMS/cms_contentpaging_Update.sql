USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_contentpaging_Update]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-02-02
-- Description:	Update
-- =============================================
CREATE PROCEDURE [dbo].[cms_contentpaging_Update]
@pagingid int,
@content ntext
AS
BEGIN
	UPDATE cms_contentpaging SET [content]=@content WHERE pagingid=@pagingid

	IF @@ERROR <> 0 
	BEGIN 
	   RETURN(-1)
	END
	ELSE
	BEGIN
	   RETURN (1)
	END
END



GO
