USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[class_readlogs_ADD]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：增加班级阅读日志 
--项目名称：ClassHomePage
--说明：
--时间：2009-2-20 9:38:17
------------------------------------
create PROCEDURE [dbo].[class_readlogs_ADD]
@userid int,
@objectid int,
@objecttype int

 AS 
	INSERT INTO applogs..class_readlogs(
	[userid],[readdatetime],[objectid],[objecttype]
	)VALUES(
	@userid,getdate(),@objectid,@objecttype
	)
	
	IF @@ERROR <> 0 
	BEGIN 
	   RETURN(-1)
	END
	ELSE
	BEGIN
	   RETURN @@IDENTITY
	END








GO
