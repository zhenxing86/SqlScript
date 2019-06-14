USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_subcategory_Delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		along
-- Create date: 2009-12-25
-- Description:	删除子分类
-- =============================================
create PROCEDURE [dbo].[cms_subcategory_Delete]
@subcategoryid int
AS
BEGIN
	DELETE cms_subcategory WHERE subcategoryid=@subcategoryid
	IF @@ERROR <> 0
	BEGIN
		RETURN -1
	END
	ELSE
	BEGIN
		RETURN 1
	END
END







GO
