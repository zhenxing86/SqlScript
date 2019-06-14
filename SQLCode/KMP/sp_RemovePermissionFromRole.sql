USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_RemovePermissionFromRole]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[sp_RemovePermissionFromRole]
@RoleID int,
@PermissionID int
AS
	DELETE T_RolePermissions WHERE RoleID = @RoleID and PermissionID = @PermissionID
GO
