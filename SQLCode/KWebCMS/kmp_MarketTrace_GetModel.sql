USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_MarketTrace_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[kmp_MarketTrace_GetModel]
@kid int
AS
BEGIN
    SELECT [kid],[market],[contentmemo],[updatetime],[name],[regdatetime]
    FROM ZGYEY_OM..MarketTrace,site
    WHERE kid=@kid AND kid=siteid
END





GO
