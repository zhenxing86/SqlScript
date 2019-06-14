USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreatePermissionCategory]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE PROCEDURE [dbo].[sp_CreatePermissionCategory]
@Title varchar(200),
@Memo varchar(50)
AS
	INSERT INTO T_PermissionCategories(Title, Memo) VALUES(@Title, @Memo)
	RETURN @@IDENTITY
GO
