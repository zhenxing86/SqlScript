USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[urgesfee_Update]    Script Date: 2014/11/24 23:22:16 ******/
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
CREATE PROCEDURE [dbo].[urgesfee_Update]
 @ID int,
 @kid int,
 @dotime datetime,
 @uid int,
 @info varchar(2000),
 @result varchar(200),
 @deletetag int
 
 AS 

UPDATE [urgesfee] SET 
 [info] = @info
 	 WHERE ID=@ID 
--	UPDATE [urgesfee] SET 
--  [kid] = @kid,
-- [dotime] = @dotime,
-- [uid] = @uid,
-- [info] = @info,
-- [result] = @result,
-- [deletetag] = @deletetag
-- 	 WHERE ID=@ID 




GO
