USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[remindmange_Update]    Script Date: 2014/11/24 23:22:16 ******/
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
CREATE PROCEDURE [dbo].[remindmange_Update]
 @ID int,
 @types varchar(30),
 @ontime datetime,
 @offtime datetime,
 @recount int,
 @intervaltime int,
 @role int,
 @deletetag int
 
 AS 
	UPDATE [remindmange] SET 
  [types] = @types,
 [ontime] = @ontime,
 [offtime] = @offtime,
 [recount] = @recount,
 [intervaltime] = @intervaltime,
 [role] = @role,
 [deletetag] = @deletetag
 	 WHERE ID=@ID 




GO
