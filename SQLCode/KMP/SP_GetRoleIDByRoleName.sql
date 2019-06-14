USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRoleIDByRoleName]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_GetRoleIDByRoleName]	
	@RoleName varchar(50),
	@Kid varchar(10)
AS
	select ID from T_Role where kindergarten=@Kid and Name=@RoleName
	RETURN
GO
