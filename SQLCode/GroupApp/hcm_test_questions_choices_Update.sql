USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[hcm_test_questions_choices_Update]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[hcm_test_questions_choices_Update]
@choiceid int,
@questionid int,
@choice varchar(100),
@weight float,
@titile varchar(500),
@content varchar(500),
@result varchar(500)
as
Set nocount on 

Update hc_test_questions_choices Set questionid = @questionid,
 choice = @choice, weight = @weight,
 titile = @titile,content = @content,result = @result
  Where choiceid = @choiceid

if Scope_Identity() > 0
  Select 1
else 
  Select 0
  





GO
