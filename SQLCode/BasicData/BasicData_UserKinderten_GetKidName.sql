USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[BasicData_UserKinderten_GetKidName]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BasicData_UserKinderten_GetKidName] 
@userid int
AS
BEGIN
  DECLARE @returnValue varchar(50)
  
  IF EXISTS(SELECT * FROM [user] WHERE userid=@userid)
  BEGIN
    SELECT t2.kname FROM  [user] t1 INNER JOIN kindergarten t2 on t1.kid=t2.kid WHERE t1.userid=@userid
  END
  ELSE
  BEGIN
   SELECT  ''
  END
  

END

GO
