USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[portal_href_GetModel]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-03-25
-- Description:	GetModel
-- =============================================
CREATE PROCEDURE [dbo].[portal_href_GetModel]
@id int
AS
BEGIN
	SELECT id,title,url,orderno,isindexshow,imgurl,showmode FROM portal_href WHERE id=@id
END



GO
