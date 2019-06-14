USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[Teacher_GetList]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Teacher_GetList] 
@kid int,
@uname varchar(100)
as 
select 
userid,[name] from BasicData..[user]

where 
kid=@kid  and [name] like '%'+@uname+'%' and usertype=1 and deletetag=1

GO
