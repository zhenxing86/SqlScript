USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_imgcontent_Delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cms_imgcontent_Delete]
@contentid int
AS
BEGIN
    Update cms_imgcontent Set deletetag = 0
    WHERE contentid=@contentid

    IF @@ERROR <> 0
    BEGIN
        RETURN 0
    END
    ELSE
    BEGIN
        RETURN 1
    END
END

GO
