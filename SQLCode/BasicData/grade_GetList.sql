USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[grade_GetList]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：查询年级记录信息 
--项目名称：
--说明：
--时间：2011-5-24 14:57:22
------------------------------------
CREATE PROCEDURE [dbo].[grade_GetList]
 AS 
	SELECT 
	gid,gname
	 FROM [grade]  order by [order]





GO
