USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[SchoolBus_TripUser_ADD]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012/3/2 17:33:19
------------------------------------
CREATE PROCEDURE [dbo].[SchoolBus_TripUser_ADD]
@tid int,
@userid int,
@inuserid int,
@intime datetime

 AS 

	INSERT INTO [SchoolBus_TripUser](
	[tid],[userid],[inuserid],[intime]
	)VALUES(
	@tid,@userid,@inuserid,getdate()
	)












GO
