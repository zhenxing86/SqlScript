USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[group_department_Delete]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2012/2/24 9:37:30
------------------------------------
CREATE PROCEDURE [dbo].[group_department_Delete]
@did int
 AS 
	DELETE [group_department]
	 WHERE did=@did








GO
