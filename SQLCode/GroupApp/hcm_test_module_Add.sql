USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[hcm_test_module_Add]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[hcm_test_module_Add]
@modulename varchar(50),
@orderno int
as
Set nocount on 

Insert Into hc_test_module (modulename, orderno)
  Values(@modulename, @orderno)

if Scope_Identity() > 0
  Select 1
else 
  Select 0
  




GO
