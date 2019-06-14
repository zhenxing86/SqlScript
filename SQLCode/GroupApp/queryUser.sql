USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[queryUser]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[queryUser]
@uid int
AS
  select b.[name],k.[kname],k.kid 
  from basicdata..kindergarten k
inner join basicdata..[user] b on b.kid =k.kid  
where b.userid = @uid

GO
