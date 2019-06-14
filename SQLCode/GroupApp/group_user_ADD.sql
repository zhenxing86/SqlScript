USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[group_user_ADD]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012/2/24 9:34:59
------------------------------------
CREATE PROCEDURE [dbo].[group_user_ADD]
@account nvarchar(50),
@pwd nvarchar(64),
@username nvarchar(50),
@intime datetime,
@deletetag int,
@gid int,
@did int

 AS 
	INSERT INTO [group_user](
	[account],[pwd],[username],[intime],[deletetag],[gid],[did]
	)VALUES(
	@account,@pwd,@username,@intime,@deletetag,@gid,@did
	)
	return  @@IDENTITY


GO
