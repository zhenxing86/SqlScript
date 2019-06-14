USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[group_teacher_GetList]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012/2/6 10:39:26
------------------------------------
CREATE PROCEDURE [dbo].[group_teacher_GetList]
@p_kid int
 AS

select kid,u.userid,[name],did,title from BasicData..[user] u
inner join BasicData..teacher t on u.userid=t.userid
where u.usertype=1 and u.kid=@p_kid

GO
