USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[group_partinfo_GetList]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012/2/6 11:34:55
------------------------------------
CREATE PROCEDURE [dbo].[group_partinfo_GetList]
@kid int
 AS 
	SELECT 
	pid,gid,g_kid,p_kid,p.[name],p.nickname,descript,logopic,k.mastername,inuserid,intime,[order],p.deletetag,privince,city
FROM [group_partinfo] p
inner join BasicData..kindergarten k on p.p_kid=k.kid
where p.deletetag=1 and  p.g_kid=@kid




GO
