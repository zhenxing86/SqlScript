USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateRole]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[sp_UpdateRole]
@ID int,
@Title varchar(50),
@Kindergarten varchar(500)
AS
	UPDATE T_Role SET Name = @Title  WHERE ID = @ID
GO
