USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[hcm_test_Add]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[hcm_test_Add]
@version varchar(50),
@testcontent varchar(50),
@instruction varchar(1000),
@weight float,
@age int,
@score float
as
Set nocount on 
insert into [hc_test] (version, testcontent,instruction, weight,age,score)
  Values(@version, @testcontent,@instruction, @weight,@age,@score)

if Scope_Identity() > 0
  Select 1
else 
  Select 0
  





GO
