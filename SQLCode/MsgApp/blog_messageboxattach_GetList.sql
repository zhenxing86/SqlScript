USE [MsgApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_messageboxattach_GetList]    Script Date: 2014/11/24 23:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：取消息附件列表
--项目名称：ZGYEYBLOG
--说明：
--时间：2009-11-25 15:21:32
------------------------------------
CREATE PROCEDURE [dbo].[blog_messageboxattach_GetList]
@messageboxid int
 AS 
	SELECT 
	attachid,messageboxid,title,filename,filepath,createdatetime
	 FROM blog_messageboxattach
	WHERE messageboxid=@messageboxid






GO
