USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[group_teacher_GetList]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[group_teacher_GetList]
@p_kid int
 AS

select kid,u.[uid],[uname],did,title from 
dbo.rep_kininfo u
inner join teacher t on u.[uid]=t.userid
where usertype=1 and kid=@p_kid


GO
