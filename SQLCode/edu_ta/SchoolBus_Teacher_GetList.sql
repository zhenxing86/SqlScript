USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Teacher_GetList]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012/2/16 11:47:00
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Teacher_GetList]
 AS 
	SELECT 
	ID,bid,uid,uname,sex,age,tel,inuserid,intime
	 FROM [SchoolBus_Teacher] where deletetag=1









GO
