USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Driver_Update]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2012/2/16 11:44:02
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Driver_Update]
@ID int,
@bid int,
@name nvarchar(30),
@sex nvarchar(10),
@age int,
@cardno nvarchar(50),
@driveinfo nvarchar(500),
@tel nvarchar(50),
@driveno varchar(50),
@cartype varchar(50),
@driveage nvarchar(50),
@healthy varchar(2000),
@inserid int
 AS 
	UPDATE [SchoolBus_Driver] SET 
	[bid] = @bid,[name] = @name,[sex] = @sex,[age] = @age,[cardno] = @cardno,[driveinfo] = @driveinfo,[tel] = @tel,[driveno] = @driveno,[cartype] = @cartype,[driveage] = @driveage,[healthy] = @healthy,[inserid] = @inserid
	WHERE ID=@ID 









GO
