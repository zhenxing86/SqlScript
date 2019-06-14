USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[users_belong_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--update
------------------------------------
CREATE PROCEDURE [dbo].[users_belong_Update]
 @ID int,
 @puid int,
 @cuid int,
 @cduty varchar(50),
 @uid int,
 @bid int,
 @intime datetime,
 @deletetag int
 
 AS 
	UPDATE [users_belong] SET 
  [puid] = @puid,
 [cuid] = @cuid,
 [cduty] = @cduty,
 [uid] = @uid,
 [bid] = @bid,
 [intime] = @intime,
 [deletetag] = @deletetag
 	 WHERE ID=@ID 



GO
