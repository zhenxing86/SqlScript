USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[cms_content_ADD]    Script Date: 2014/11/24 23:06:07 ******/
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
CREATE PROCEDURE [dbo].[cms_content_ADD]
  @catid int,
 @title varchar(100),
 @content varchar(max),
 @inuserid int,
 @intime datetime,
 @deletetag int,
 @gid int,
 @url varchar(300)

 AS 
	INSERT INTO [cms_content](
  [catid],
 [title],
 [content],
 [inuserid],
 [intime],
 [deletetag],
 [gid],
 url
	)VALUES(
	
  @catid,
 @title,
 @content,
 @inuserid,
 @intime,
 @deletetag,
 @gid,@url
 	
	)

    declare @contentid int
	set @contentid=@@IDENTITY
	RETURN @contentid










GO
