USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[markfilteredrecord]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE Procedure [dbo].[markfilteredrecord]  
@BegDate Date,   
@EndDate Date,  
@kid Int=0,
@companyid int=0 
as  
if(@companyid>0)
Update ossapp.dbo.filteredrecord Set Status = 1
 Where companyid=@companyid 
and adddate >=@BegDate 
and adddate <= @EndDate  
 else
 Update ossapp.dbo.filteredrecord Set Status = 1
 Where kid = @kid 
and adddate >=@BegDate 
and adddate <= @EndDate  
  
  
  
  
GO
