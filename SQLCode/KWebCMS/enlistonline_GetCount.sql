USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[enlistonline_GetCount]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[enlistonline_GetCount]
@siteid int
AS
BEGIN
    DECLARE @count int
    SELECT @count=count(*) FROM enlistonline
	WHERE siteid=@siteid
    RETURN @count
END





GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'enlistonline_GetCount', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
