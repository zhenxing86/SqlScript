USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[dict_ADD]    Script Date: 2014/11/24 23:22:16 ******/
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
CREATE PROCEDURE [dbo].[dict_ADD]
  @name varchar(100),
 @info varchar(200),
 @pname varchar(100),
 @remark varchar(3000),
 @deletetag int
 
 AS 
declare @ID int
select @ID=max(ID) from [dict] where [name]=@name
set @ID=@ID+1
if(@ID<1)
begin
set @ID=convert(int,@pname)
end


	INSERT INTO [dict](
ID,
  [name],
 [info],
 [pname],
 [remark],
 [deletetag]
 
	)VALUES(
	@ID,
  @name,
 @info,
 @pname,
 @remark,
 @deletetag
 	
	)

   
	set @ID=@@IDENTITY
	RETURN @ID



GO
