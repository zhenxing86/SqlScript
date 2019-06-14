USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_user_GetNewList]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master谭
-- Create date: 2013-08-06
-- Description:	取最新注册博客
-- Memo:
DECLARE @count INT
EXEC  @count=blog_splendidalbum_photo_GetListCount
SELECT @count
*/ 
CREATE PROCEDURE [dbo].[blog_user_GetNewList]
AS
	SELECT TOP (10) ub.bloguserid,u.name,u.regdatetime 
		FROM basicdata.dbo.[user] u 
			inner join basicdata.dbo.user_bloguser ub on u.userid = ub.userid	
		WHERE u.deletetag = 1 
		ORDER BY u.regdatetime DESC

GO
