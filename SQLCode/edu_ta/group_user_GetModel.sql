USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_user_GetModel]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2012/2/24 9:34:59
------------------------------------
CREATE PROCEDURE [dbo].[group_user_GetModel]
@userid int
 AS 
	SELECT 
	1,userid,account,pwd,username,u.intime,u.deletetag,areaid,did,tel,convert(varchar,depid)
	,(select dname from dbo.group_department d where d.did=u.did) dname
	
	 FROM [group_user] u
	 WHERE userid=@userid




GO
