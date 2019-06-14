USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStafferPersonInfo]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create PROCEDURE [dbo].[sp_UpdateStafferPersonInfo]
@UserID int,
@NickName varchar(50),
@TrueName varchar(50),
@Mobile varchar(50)
AS
	Update T_Users Set NickName = @NickName where ID = @UserID
	Update T_Staffer Set Name = @TrueName, mobile = @Mobile where UserID = @UserID

GO
