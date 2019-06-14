USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[permissionsetting_Add]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-10
-- Description:	Add
-- =============================================
CREATE PROCEDURE [dbo].[permissionsetting_Add]
@ptype int,
@siteid int
AS
BEGIN	
	IF EXISTS (SELECT * FROM permissionsetting WHERE ptype=@ptype AND siteid=@siteid)
	BEGIN
		RETURN 1
	END

	INSERT INTO permissionsetting VALUES(@ptype,@siteid)

	IF @@ERROR <> 0
	BEGIN
		RETURN 0
	END
	ELSE
	BEGIN
		RETURN @@IDENTITY
	END
END




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'permissionsetting_Add', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
