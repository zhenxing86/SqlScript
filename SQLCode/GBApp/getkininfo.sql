USE [GBApp]
GO
/****** Object:  StoredProcedure [dbo].[getkininfo]    Script Date: 2014/11/24 23:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getkininfo]
@kid int
 AS 	

select [name]
           ,[term]
           ,[module],kid from [GBGenKin]
where status=0
and kid=@kid


GO
