USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[agentbase_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Add
------------------------------------
CREATE PROCEDURE [dbo].[agentbase_ADD]
  @uid int,
 @name varchar(50),
 @mastername varchar(200),
 @tel varchar(100),
 @qq varchar(100),
 @isone int,
 @remark varchar(5000),
 @deletetag int
 
 AS 
	INSERT INTO [agentbase](
  [uid],
 [name],
 [mastername],
 [tel],
 [qq],
 [isone],
 [remark],
 [deletetag]
 
	)VALUES(
	
  @uid,
 @name,
 @mastername,
 @tel,
 @qq,
 @isone,
 @remark,
 @deletetag
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
