USE [BlogApp]
GO
/****** Object:  UserDefinedFunction [dbo].[IsSplendidAlbum]    Script Date: 05/14/2013 14:36:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsSplendidAlbum]
	(
		@userid int,
		@categoriesid int
	)
RETURNS INT
AS
	BEGIN	
		DECLARE @issplendidalbum int
		IF(exists(select * from blog_splendidalbum  where userid=@userid and categoriesid=@categoriesid))
		BEGIN	
			SELECT @issplendidalbum =1	 
		END
		ELSE
		BEGIN
		    SELECT @issplendidalbum=0
		END		
		RETURN @issplendidalbum
	END
GO
