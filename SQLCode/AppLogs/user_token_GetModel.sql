USE [AppLogs]
GO
/****** Object:  StoredProcedure [dbo].[user_token_GetModel]    Script Date: 2014/11/24 21:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[user_token_GetModel]
@token VARCHAR(100)
AS
BEGIN
  SELECT token,info from user_tokens where token=@token
END

GO
