USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPermissionIDByTitle]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[sp_GetPermissionIDByTitle]
@PermissionTitle varchar(50),
@Kid varchar(50)
AS
select id from t_permissions where title = @PermissionTitle and kindergartenid = @Kid

GO
