USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[role_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--update
------------------------------------
CREATE PROCEDURE [dbo].[role_Update]
 @ID int,
 @agbid int,
 @name varchar(100),
 @duty varchar(200),
 @describe varchar(2000),
 @deletetag int
 
 AS 
	UPDATE [role] SET 
  [agbid] = @agbid,
 [name] = @name,
 [duty] = @duty,
 [describe] = @describe,
 [deletetag] = @deletetag
 	 WHERE ID=@ID 



GO
