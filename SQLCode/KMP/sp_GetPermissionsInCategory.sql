USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPermissionsInCategory]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_GetPermissionsInCategory]
@CategoryID int,
@KID int
AS
if(@KID!=-1)
begin
	SELECT * FROM T_Permissions where CategoriesID=@CategoryID
	and KindergartenID = @KID ORDER BY Title
end
else
begin
	SELECT * FROM T_Permissions where CategoriesID=@CategoryID ORDER BY Title
end



GO
