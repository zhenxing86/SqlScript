USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[vote_subject_Delete]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[vote_subject_Delete]
@votesubjectid int
AS
BEGIN
    DELETE vote_subject
    WHERE votesubjectid=@votesubjectid

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
