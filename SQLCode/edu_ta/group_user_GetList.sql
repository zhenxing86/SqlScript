USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_user_GetList]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012/2/24 9:34:59
------------------------------------
CREATE PROCEDURE [dbo].[group_user_GetList]
 AS 
	SELECT 
	userid,account,pwd,username,intime,deletetag,1,did
	 FROM [group_user] where deletetag=1






GO
