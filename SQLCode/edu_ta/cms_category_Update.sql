USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[cms_category_Update]    Script Date: 2014/11/24 23:06:07 ******/
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
CREATE PROCEDURE [dbo].[cms_category_Update]
 @catid int,
 @title varchar(100),
 @gid int,
 @catcode varchar(100)
 
 AS 
	UPDATE [cms_category] SET 
  [title] = @title,
 [gid] = @gid,
 [catcode] = @catcode
 	 WHERE catid=@catid 








GO
