USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[vote_subject_GetCountByKWeb]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[vote_subject_GetCountByKWeb]
@siteid int
AS
BEGIN
    DECLARE @count int
    SELECT @count=count(*) FROM vote_subject
	WHERE siteid=@siteid AND status=1
    RETURN @count
END




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'vote_subject_GetCountByKWeb', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
