USE [edu_dx]
GO
/****** Object:  StoredProcedure [dbo].[init_teacher_GetList]    Script Date: 2014/11/24 23:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[init_teacher_GetList]
 AS 
	SELECT 
	       [userid]    ,[did]    ,[title]    ,[post]    ,[education]    ,[employmentform]    ,[politicalface]    ,[kinschooltag]  	 FROM [teacher]
	


GO
