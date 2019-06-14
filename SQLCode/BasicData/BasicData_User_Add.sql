USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[BasicData_User_Add]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BasicData_User_Add]
@account varchar(30),
@pwd varchar(50),
@usertype int
AS
BEGIN
  
  INSERT INTO [user](account,[password],usertype,regdatetime) values (@account,@pwd,@usertype,GETDATE())
  
  IF(@@ERROR<>0)
    RETURN 0
  ELSE
   RETURN @@IDENTITY  	
  	
END





GO
