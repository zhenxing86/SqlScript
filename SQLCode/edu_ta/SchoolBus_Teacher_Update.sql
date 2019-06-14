USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Teacher_Update]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2012/2/16 11:47:00
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Teacher_Update]
@ID int,
@bid int,
@uid int,
@uname varchar(50),
@sex varchar(50),
@age int,
@tel varchar(500),
@inuserid int
 AS 
	UPDATE [SchoolBus_Teacher] SET 
	[bid] = @bid,[uid] = @uid,[uname] = @uname,[sex] = @sex,[age] = @age,[tel] = @tel,[inuserid] = @inuserid
	WHERE ID=@ID 









GO
