USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[votelog_GetCount]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[votelog_GetCount]
AS
BEGIN
    DECLARE @count int
    SELECT @count=count(*) FROM votelog
    RETURN @count
END


GO
