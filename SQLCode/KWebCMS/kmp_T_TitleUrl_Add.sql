USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_T_TitleUrl_Add]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[kmp_T_TitleUrl_Add]
@Kid int,
@PhotoUrl nvarchar(200)='',
@Url nvarchar(200)='',
@Title nvarchar(200)='',
@Type int,
@OrderNo int,
@color varchar(20)=''
AS
BEGIN
    INSERT INTO zgyey_om..T_TitleUrl([Kid],[PhotoUrl],[Url],[Title],[Type],[OrderNo],[createdate],[color])
    VALUES(@Kid,@PhotoUrl,@Url,@Title,@Type,@OrderNo,GETDATE(),@color) 

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
