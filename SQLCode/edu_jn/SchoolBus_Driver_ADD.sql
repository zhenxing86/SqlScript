USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_Driver_ADD]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012/2/16 11:44:02
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_Driver_ADD]
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
@inserid int,
@intime datetime

 AS 
	INSERT INTO [SchoolBus_Driver](
	[bid],[name],[sex],[age],[cardno],[driveinfo],[tel],[driveno],[cartype],[driveage],[healthy],[inserid],[intime],deletetag
	)VALUES(
	@bid,@name,@sex,@age,@cardno,@driveinfo,@tel,@driveno,@cartype,@driveage,@healthy,@inserid,getdate(),1
	)
return  @@IDENTITY












GO
