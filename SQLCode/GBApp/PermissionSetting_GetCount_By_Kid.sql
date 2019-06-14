USE [GBApp]
GO
/****** Object:  StoredProcedure [dbo].[PermissionSetting_GetCount_By_Kid]    Script Date: 2014/11/24 23:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：判断该幼儿园是否有免费下载成长档案的权限
--项目名称：ArchivesApply
--说明：下载成长档案
--时间：2013-1-6 11:50:29
--exec [PermissionSetting_GetCount_By_Kid] 18579
------------------------------------ 
CREATE  PROCEDURE [dbo].[PermissionSetting_GetCount_By_Kid]
@kId nvarchar(150)
 AS 
begin
	select count(1) from blogapp..permissionsetting where kid=@kId and ptype=25
end	



GO
