USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_T_TitleUrl_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[kmp_T_TitleUrl_GetModel]
@id int
AS
BEGIN
    SELECT [id],[kid],[photourl],[url],[title],[type],[orderno],[createdate],[color]
    FROM zgyey_om..T_TitleUrl
    WHERE id=@id
END



GO
