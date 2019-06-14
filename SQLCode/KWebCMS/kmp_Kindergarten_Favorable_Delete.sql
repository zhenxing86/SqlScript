USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_Kindergarten_Favorable_Delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[kmp_Kindergarten_Favorable_Delete]
@KID int,
@Favorable_Type_ID int
AS
BEGIN
	DELETE zgyey_om..Kindergarten_Favorable WHERE KID=@KID AND Favorable_Type_ID=@Favorable_Type_ID

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
