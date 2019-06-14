USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[user_baseinfo_GetModel]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      Master谭  
-- Create date: 2013-08-01  
-- Description:  得到老师对象的详细信息 
-- Memo:  
user_baseinfo_GetModel 296418
*/ 
CREATE PROCEDURE [dbo].[user_baseinfo_GetModel]
	@userid int
AS 
BEGIN
	SET NOCOUNT ON
	SELECT userid,account, name, birthday, gender, mobile, enrollmentdate
	 FROM [user]
	 WHERE userid = @userid and deletetag = 1
END

GO
