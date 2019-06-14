USE [MsgApp]
GO
/****** Object:  UserDefinedFunction [dbo].[GetBlogIdByUserId]    Script Date: 05/14/2013 14:54:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
--------------------------------------------------------------------------------------------------------------------------------
create FUNCTION [dbo].[GetBlogIdByUserId]
	(
	@userid int
	)
RETURNS  int
AS
	BEGIN
		DECLARE @name int
		IF(@userid<>-1)
		BEGIN	
			SELECT @name =bloguserid FROM BasicData..user_bloguser  WHERE  userid= @userid		 
		END
		ELSE
		BEGIN
		    SELECT @name=-1
		END		
		RETURN @name
	END
GO
