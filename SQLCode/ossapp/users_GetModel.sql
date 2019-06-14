USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[users_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------

------------------------------------
CREATE PROCEDURE [dbo].[users_GetModel]
@id int
 AS 
	SELECT 
	 1      ,u.[ID]    ,[account]    ,[password]    ,[usertype]    ,[roleid]    ,[bid]    ,u.[name]    ,[mobile]    ,u.[qq]    ,u.[remark]    ,[regdatetime]    ,u.[deletetag]
,r.duty,(select top 1 province from agentarea where bid=gid) province
,u.seruid,(select top 1 s.[name] from [users] s where s.ID=u.seruid),r.[name],jxsid
FROM [users] u
inner join [role] r on u.roleid=r.ID

	 WHERE u.ID=@id and u.deletetag=1


GO
