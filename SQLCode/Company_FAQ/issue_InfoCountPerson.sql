USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[issue_InfoCountPerson]    Script Date: 2014/11/24 22:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[issue_InfoCountPerson]
@personID int
AS
DECLARE @RESULT INT
   SET @RESULT=ISNULL((SELECT COUNT(*) FROM issue_tracking 
    WHERE status=1 AND techSaffID=@personID),0)
RETURN @RESULT


GO
