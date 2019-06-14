USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[vote_item_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[vote_item_Delete]
@voteitemid int
AS
BEGIN
    DELETE vote_item
    WHERE voteitemid=@voteitemid

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
