USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Driver_Delete]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2012/2/16 11:44:02
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Driver_Delete]
@ID int
 AS 
	update [SchoolBus_Driver] set deletetag=0
	 WHERE ID=@ID 




GO
