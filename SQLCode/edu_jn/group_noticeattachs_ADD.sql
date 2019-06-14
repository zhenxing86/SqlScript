USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[group_noticeattachs_ADD]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012/2/6 14:22:20
------------------------------------
CREATE PROCEDURE [dbo].[group_noticeattachs_ADD]
@nid int,
@title nvarchar(200),
@filepath nvarchar(500),
@filename nvarchar(500),
@filesize nvarchar(500),
@filetype int,
@createdatetime datetime

 AS 
	INSERT INTO [group_noticeattachs](
	[nid],[title],[filepath],[filename],[filesize],[filetype],[createdatetime]
	)VALUES(
	@nid,@title,@filepath,@filename,@filesize,@filetype,@createdatetime
	)
declare @attachsid int
SET @attachsid = @@IDENTITY
return @attachsid











GO
