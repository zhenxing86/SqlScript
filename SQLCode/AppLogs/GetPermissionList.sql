USE [AppConfig]
GO
/****** Object:  StoredProcedure [dbo].[GetPermissionList]    Script Date: 2014/11/24 21:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






create  PROCEDURE [dbo].[GetPermissionList] 
@kid int
 AS 

select ptype from blogapp..permissionsetting where kid=@kid




GO
