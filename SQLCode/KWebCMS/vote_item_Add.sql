USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[vote_item_Add]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[vote_item_Add]
@votesubjectid int,
@title nvarchar(30)=''
AS
BEGIN
    INSERT INTO vote_item([votesubjectid],[title])
    VALUES(@votesubjectid,@title) 

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
