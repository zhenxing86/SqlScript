USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[Getisaudit_State]    Script Date: 2014/11/24 23:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Getisaudit_State]  
@kid int
 AS 
 
declare @isaudit int
select @isaudit=count(1) from blogapp..permissionsetting where ptype=93 and kid=@kid

select @isaudit
return @isaudit



GO
