USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_user_Delete]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：删除一条记录 
--项目名称：
--说明：
--时间：2012/2/24 9:34:59
------------------------------------
CREATE PROCEDURE [dbo].[group_user_Delete]
@userid int
 AS 
	DELETE [group_user]
	 WHERE userid=@userid






GO
