USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[kinlinks_ADD]    Script Date: 2014/11/24 23:22:16 ******/
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
CREATE PROCEDURE [dbo].[kinlinks_ADD]
  @kid int,
 @name varchar(200),
 @mobilephone varchar(100),
 @tel varchar(100),
 @qq varchar(30),
 @email varchar(100),
 @post varchar(30),
 @titles varchar(60),
 @deletetag int,
@uid int,
  @address nvarchar(600),
  @remark nvarchar(max)
 AS 
	INSERT INTO [kinlinks](
  [kid],
 [name],
 [mobilephone],
 [tel],
 [qq],
 [email],
 [post],
 [titles],
 [deletetag],[uid],[address],remark
 
	)VALUES(
	
  @kid,
 @name,
 @mobilephone,
 @tel,
 @qq,
 @email,
 @post,
 @titles,
 @deletetag,@uid,@address,@remark
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID






GO
