USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[group_department_GetModel]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：
--说明：
--时间：2012/2/24 9:37:30
------------------------------------
CREATE PROCEDURE [dbo].[group_department_GetModel]
@did int
 AS 
	SELECT 
	1,did,dname,superiorid,gid,deletetag
	 FROM [group_department]
	 WHERE did=@did



GO
