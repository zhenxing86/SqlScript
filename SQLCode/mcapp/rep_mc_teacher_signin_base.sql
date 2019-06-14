USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[rep_mc_teacher_signin_base]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[rep_mc_teacher_signin_base]
 @kid int
,@years int
,@months int
 AS 


SELECT [ID]    ,[kid]      ,[userid]    ,[years]    ,[months]    
,[d1]    ,[d2]    ,[d3]    ,[d4]    ,[d5]    ,[d6]    ,[d7]    ,[d8]    ,[d9]    ,[d10]    
,[d11]    ,[d12]    ,[d13]    ,[d14]    ,[d15]    ,[d16]    ,[d17]    ,[d18]    ,[d19]    ,[d20]    
,[d21]    ,[d22]    ,[d23]    ,[d24]    ,[d25]    ,[d26]    ,[d27]    ,[d28]    ,[d29]    ,[d30]    ,[d31] ,d0 ,uname	 
FROM [rep_mc_teacher_signin]  
where kid=@kid 
and (@years=-1 or years=@years)
and (@months=-1 or months=@months)





GO
