USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_photo_GetListByAlbumID]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hanbin
-- Create date: 2009-01-20
-- Description:	获取图片列表
-- =============================================
CREATE PROCEDURE [dbo].[cms_photo_GetListByAlbumID]
@albumid int
AS
BEGIN
	SELECT * FROM cms_photo WHERE albumid=@albumid and Deletetag = 1
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相册ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'cms_photo_GetListByAlbumID', @level2type=N'PARAMETER',@level2name=N'@albumid'
GO
