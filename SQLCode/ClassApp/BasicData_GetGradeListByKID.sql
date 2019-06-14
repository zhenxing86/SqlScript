USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[BasicData_GetGradeListByKID]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


  CREATE  PROCEDURE [dbo].[BasicData_GetGradeListByKID] 
@kid int
AS
BEGIN
  SELECT distinct(gid),gname from basicdata..grade t1  
left join  basicdata..class  t2  on t1.gid=t2.grade where t2.kid=@kid and t2.grade<>38 and t2.deletetag=1
END
 

GO
