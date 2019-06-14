USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[GetRightUserID]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		lx
-- Create date: 7-3
-- Description:	获取用户是否是管理员
--EXEC GetRightUserID 83963
-- =============================================
CREATE PROCEDURE [dbo].[GetRightUserID]
@userid int
AS
BEGIN
   DECLARE @returnValue int
   SELECT @returnValue=[UID] FROM kwebcms..site_user WHERE appuserid=@userid
   return @returnValue
END





GO
