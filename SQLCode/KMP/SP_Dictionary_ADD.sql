USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[SP_Dictionary_ADD]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Dictionary_ADD]
@ID int output,
@Caption varchar(200) ,
@Code varchar(50) ,
@Catalog int 
 AS 
	INSERT INTO T_Dictionary(
	[Caption],[Code],[Catalog]
	)VALUES(
	@Caption,@Code,@Catalog
	)
	SET @ID = @@IDENTITY
GO
