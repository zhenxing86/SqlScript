USE [CardApp]
GO
/****** Object:  StoredProcedure [dbo].[class_attendance_device_GetListByUserid]    Script Date: 2014/11/24 22:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途:取个人未拆分的接送卡数据
--项目名称：classhomepage
--说明：
--时间：2010-5-10 15:50:10
------------------------------------
CREATE PROCEDURE [dbo].[class_attendance_device_GetListByUserid]
@userid int,
@begintime datetime,
@endtime datetime
AS
	select userid,checktime,kid,cardno,usertype,id from attendance
	 where userid=@userid and isdevice=0 and checktime>=@begintime and checktime<=@endtime
    order by checktime 





GO
