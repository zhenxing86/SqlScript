USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[manage_menu_GetList]    Script Date: 2014/11/25 11:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------
--用途：取管理中心菜单记录列表
--项目名称：ZGYEYBLOG
--说明：
--时间：2008-12-8 16:15:25
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[manage_menu_GetList]

 AS 	
	SELECT 
	id,title,url,target,parentid,imageurl,orderno
	 FROM manage_menu
	ORDER BY orderno



GO
