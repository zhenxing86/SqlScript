USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[offline_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--鐢ㄩ€旓細澧炲姞涓€鏉¤褰?
--椤圭洰鍚嶇О锛?
--璇存槑锛?
--鏃堕棿锛?012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[offline_ADD]
  @kid varchar(10),
 @reason varchar(2000),
 @offtime datetime,
 @uid int,
 @remark varchar(2000),
 @deletetag int
 
 AS 
	INSERT INTO [offline](
  [kid],
 [reason],
 [offtime],
 [uid],
 [remark],
 [deletetag]
 
	)VALUES(
	
  @kid,
 @reason,
 @offtime,
 @uid,
 @remark,
 @deletetag
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
