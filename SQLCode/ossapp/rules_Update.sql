USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[rules_Update]    Script Date: 2014/11/24 23:22:16 ******/
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
CREATE PROCEDURE [dbo].[rules_Update]
 @ID int,
 @roleid int,
 @name varchar(200),
 @operat varchar(100),
 @level int,
 @deletetag int
 
 AS 
	UPDATE [rules] SET 
  [roleid] = @roleid,
 [name] = @name,
 [operat] = @operat,
 [level] = @level,
 [deletetag] = @deletetag
 	 WHERE ID=@ID 



GO
