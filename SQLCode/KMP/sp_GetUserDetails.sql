USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserDetails]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[sp_GetUserDetails]
@UserID int
AS
	SELECT * FROM T_Users WHERE ID = @UserID and activity = 1
GO
