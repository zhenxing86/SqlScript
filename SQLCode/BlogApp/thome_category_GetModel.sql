USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[thome_category_GetModel]    Script Date: 2014/11/25 11:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：得到实体对象的详细信息 
--项目名称：zgyeyblog
--说明：
--时间：2008-09-23 13:14:22
------------------------------------
CREATE PROCEDURE [dbo].[thome_category_GetModel]
@categoryid int
 AS 
	SELECT 
	categoryid,period,kid,title,startdate,enddate
	 FROM thome_category
	 WHERE categoryid=@categoryid 









GO
