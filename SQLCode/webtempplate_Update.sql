USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[webtempplate_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--鐢ㄩ€旓細淇敼涓€鏉¤褰?
--椤圭洰鍚嶇О锛?
--璇存槑锛?
--鏃堕棿锛?012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[webtempplate_Update]
 @ID int,
 @kid int,
 @name varchar(20),
 @tempname varchar(100),
 @info varchar(2000),
 @isused int,
 @deletetag int
 
 AS 
	UPDATE [webtempplate] SET 
  [kid] = @kid,
 [name] = @name,
 [tempname] = @tempname,
 [info] = @info,
 [isused] = @isused,
 [deletetag] = @deletetag
 	 WHERE ID=@ID 


GO
