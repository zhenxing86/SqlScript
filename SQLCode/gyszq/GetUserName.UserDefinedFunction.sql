USE [gyszq]
GO
/****** Object:  UserDefinedFunction [dbo].[GetUserName]    Script Date: 08/28/2013 14:42:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--取访问者昵称
CREATE FUNCTION [dbo].[GetUserName]
	(
	@userid int
	)
RETURNS  varchar(40)
AS
	BEGIN
		DECLARE @name varchar(50)
		IF(@userid=0)
		BEGIN
			SELECT @name='游客'
		END
		ELSE IF(@userid<>-1)
		BEGIN	
			SELECT @name =nickname FROM blog..blog_user WHERE  userid= @userid		 
		END
		ELSE
		BEGIN
		    SELECT @name='中国幼儿园门户'
		END		
		RETURN @name
	END
GO
