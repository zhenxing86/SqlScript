USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserRoleName]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_GetUserRoleName]
@Kid int,
@UserID int

AS
select t2.name From t_userroles t1 left join t_role t2 on t1.roleid=t2.id 
where t2.kindergarten=@Kid and t1.userid=@UserID
GO
