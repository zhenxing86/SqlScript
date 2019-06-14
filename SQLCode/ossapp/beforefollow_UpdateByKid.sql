USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[beforefollow_UpdateByKid]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--update
------------------------------------
CREATE PROCEDURE [dbo].[beforefollow_UpdateByKid]

 @kid int,
 @uid int
 
 AS 
	UPDATE [beforefollow] SET 
 [uid] = @uid
 	 WHERE kid=@kid 




GO
