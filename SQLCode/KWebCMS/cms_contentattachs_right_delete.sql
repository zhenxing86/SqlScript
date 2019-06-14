USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_contentattachs_right_delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		lx
-- Create date: 2010-12-10
-- Description:	取消附件权限
-- =============================================
create PROCEDURE [dbo].[cms_contentattachs_right_delete]
@contentattachesid int
AS
BEGIN
    delete cms_contentattachs_right where contentattachsid=@contentattachesid

     IF @@ERROR<>0
     BEGIN
      RETURN 0
     END
     ELSE
     BEGIN
      RETURN 1
     END
END

GO
