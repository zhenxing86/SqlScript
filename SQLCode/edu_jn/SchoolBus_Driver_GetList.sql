USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Driver_GetList]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012/2/16 11:44:02
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Driver_GetList]
 AS 
	SELECT 
	ID,bid,name,sex,age,cardno,driveinfo,tel,driveno,cartype,driveage,healthy,inserid,intime
	 FROM [SchoolBus_Driver] where deletetag=1













GO
