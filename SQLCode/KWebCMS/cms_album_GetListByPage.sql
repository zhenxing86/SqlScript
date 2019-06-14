USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_album_GetListByPage]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hanbin
-- Create date: 2008-02-03
-- Description:	分页获取图片集
-- =============================================
CREATE PROCEDURE [dbo].[cms_album_GetListByPage]
@categoryid int,  
@page int,  
@size int,  
@siteid int  
AS  
BEGIN   
 IF(@page>1)  
 BEGIN  
  DECLARE @prep int,@ignore int  
    
  SET @prep = @size * @page  
  SET @ignore=@prep - @size  
  
  DECLARE @tmptable TABLE  
  (  
   --定义临时表  
   row int IDENTITY (1, 1),  
   tmptableid bigint  
  )  
    
  SET ROWCOUNT @prep  
  INSERT INTO @tmptable(tmptableid) SELECT albumid FROM cms_album WHERE categoryid=@categoryid and siteid=@siteid and deletetag = 1 ORDER BY orderno DESC,albumid DESC  
  
  SET ROWCOUNT @size  
  SELECT c.* FROM cms_album c join @tmptable on c.albumid=tmptableid WHERE row > @ignore and c.deletetag = 1 ORDER BY orderno DESC,albumid DESC  
 END  
 ELSE  
 BEGIN  
  SET ROWCOUNT @size  
  SELECT * FROM cms_album WHERE categoryid=@categoryid and siteid=@siteid and deletetag = 1 ORDER BY orderno DESC,albumid DESC  
 END  
END  

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'cms_album_GetListByPage', @level2type=N'PARAMETER',@level2name=N'@categoryid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'cms_album_GetListByPage', @level2type=N'PARAMETER',@level2name=N'@page'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'cms_album_GetListByPage', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
