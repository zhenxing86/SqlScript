USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_Staffer_Delete]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Staffer_Delete]
@ID int
 AS 
	BEGIN TRAN
	UPDATE T_Users
	 SET ACTIVITY = -1 WHERE [ID] = @ID

	UPDATE T_Staffer
	 SET Status = -1 WHERE [UserID] = @ID
	COMMIT TRAN
GO
