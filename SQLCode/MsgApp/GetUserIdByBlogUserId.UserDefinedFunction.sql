USE [MsgApp]
GO
/****** Object:  UserDefinedFunction [dbo].[GetUserIdByBlogUserId]    Script Date: 05/14/2013 14:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetUserIdByBlogUserId]
	(
	@userid int
	)
RETURNS  Int
AS
BEGIN
		DECLARE @name Int
		IF(@userid<>-1)
		BEGIN	
			SELECT @name =userid FROM BasicData..user_bloguser  WHERE  bloguserid= @userid		 
		END
		ELSE
		BEGIN
		    SELECT @name=-1
		END		
		RETURN @name
	END
GO
