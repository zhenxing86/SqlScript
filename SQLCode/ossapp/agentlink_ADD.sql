USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[agentlink_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Add
------------------------------------
CREATE PROCEDURE [dbo].[agentlink_ADD]
  @gid int,
 @name varchar(100),
 @tel varchar(100),
 @qq varchar(100),
 @email varchar(100),
 @post varchar(100),
 @remark varchar(2000),
 @deletetag int
 
 AS 
	INSERT INTO [agentlink](
  [gid],
 [name],
 [tel],
 [qq],
 [email],
 [post],
 [remark],
 [deletetag]
 
	)VALUES(
	
  @gid,
 @name,
 @tel,
 @qq,
 @email,
 @post,
 @remark,
 @deletetag
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
