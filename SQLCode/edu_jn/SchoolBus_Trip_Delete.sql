USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Trip_Delete]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2012/3/2 17:38:04
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Trip_Delete]
@id int
 AS 
	update  [SchoolBus_Trip] set deletetag=0
	 WHERE id=@id








GO
