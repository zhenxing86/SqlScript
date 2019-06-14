USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[invest_user_Delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-02-04
-- Description:	删除会员
-- =============================================
CREATE PROCEDURE [dbo].[invest_user_Delete]
@userid int
AS
BEGIN
	DELETE invest_user WHERE userid=@userid

	IF @@ERROR <> 0
	BEGIN
		return -1
	END
	ELSE
	BEGIN
		RETURN 1
	END
END



GO
