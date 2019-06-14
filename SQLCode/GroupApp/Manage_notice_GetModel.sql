USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[Manage_notice_GetModel]    Script Date: 2014/11/24 23:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：取通知
--项目名称：ServicePlatformManage
--说明：
--时间：2010-2-24 16:27:49
------------------------------------
CREATE PROCEDURE [dbo].[Manage_notice_GetModel]
@noticeid int
 AS 
	SELECT 
	noticeid,title,author,titlecolor,content,createdatetime,viewcount,orderno,status
	 FROM [notice]
	 WHERE noticeid=@noticeid 


GO
