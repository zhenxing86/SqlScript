USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[agentarea_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Add
------------------------------------
CREATE PROCEDURE [dbo].[agentarea_ADD]
  @gid int,
 @province int,
 @city int,
 @deletetag int
 
 AS 
	INSERT INTO [agentarea](
  [gid],
 [province],
 [city],
 [deletetag]
 
	)VALUES(
	
  @gid,
 @province,
 @city,
 @deletetag
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
