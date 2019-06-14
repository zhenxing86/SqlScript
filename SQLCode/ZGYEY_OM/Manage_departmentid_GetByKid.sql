USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Manage_departmentid_GetByKid]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：取部门编号
--项目名称：classhomepage
--说明：
--时间：2009-7-28 15:20:13
-----------------------------------
CREATE PROCEDURE [dbo].[Manage_departmentid_GetByKid]
@kid int,
@dname nvarchar(200)
AS
	Declare @did int
	select @did=did from BasicData.dbo.department where kid=@kid and dname=@dname and deletetag=1
	return @did




GO
