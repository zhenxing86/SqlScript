USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[site_user_GetUserType]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-10
-- Description:	GetUserType
-- =============================================
CREATE PROCEDURE [dbo].[site_user_GetUserType]
@userid int
AS
BEGIN
	DECLARE @usertype int
	SELECT @usertype=usertype FROM site_user WHERE userid=@userid
	IF @usertype IS NULL
	BEGIN
		SET @usertype=-1
	END

	RETURN @usertype
END



GO
