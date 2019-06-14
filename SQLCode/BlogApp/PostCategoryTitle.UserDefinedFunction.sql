USE [BlogApp]
GO
/****** Object:  UserDefinedFunction [dbo].[PostCategoryTitle]    Script Date: 05/14/2013 14:36:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[PostCategoryTitle]
	(
	@id int
	)
RETURNS  varchar(40)
AS
	BEGIN
	DECLARE @Caption varchar(40)
	SELECT @Caption = Title  FROM blog_postscategories WHERE categoresid = @id
		 
	RETURN @Caption
	END
GO
