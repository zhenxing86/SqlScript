USE [CardApp]
GO
/****** Object:  StoredProcedure [dbo].[class_attendance_history_istimedevice]    Script Date: 2014/11/24 22:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--select * From attendance_history where kid=13730 and isdevice=0 and usertype=1




--select count(1) From [attendance_history] where kid=10871 and isdevice=0 and checktime between @begintime and @endtime  order by checktime

--select count(1) From attendance_history where isdevice=0

--select * From attendance_history where kid=14496 and isdevice=0 order by id desc
--exec class_attendance_istimedevice
--拆分指定时间内所有记录
CREATE PROCEDURE [dbo].[class_attendance_history_istimedevice]
AS
			DECLARE @id int
			DECLARE @begintime DATETIME
			DECLARE @endtime DATETIME
			SET @begintime=cast('2013-06-01 00:00:00.001' as datetime)
			SET @endtime=cast('2013-07-01 23:59:59.999' as datetime)
--			SET @begintime=cast(convert(varchar(10),getdate(),120)+' 00:00:00.001' as datetime)
--			SET @endtime=cast(convert(varchar(10),getdate(),120)+' 23:59:59.999' as datetime)
			declare rs2 insensitive cursor for 
--			select top 268 id From attendance_history where isdevice=0 
--			and kid=7525 and checktime between @begintime and @endtime -- order by checktime

select top 1000 id from attendance_history where kid=14496  
and usertype=1 and isdevice=0 and checktime>='2013-06-01' --and checktime<='2013-07-01'

			open rs2
			fetch next from rs2 into @id
			WHILE @@fetch_status=0
			BEGIN
					DECLARE @kid int
					DECLARE @cardno nvarchar(50)
					DECLARE @userid int
					DECLARE @deptid int
					DECLARE @classid int
					DECLARE @usertype int
					DECLARE @year int
					DECLARE @month int
					DECLARE @daystr nvarchar(10)
					DECLARE @checktimestr nvarchar(100)
					DECLARE @checktime datetime
					SET @classid=0
					SET @deptid=0
					SELECT @kid=kid,@cardno=cardno,@userid=userid,@checktime=checktime,@usertype=usertype FROM attendance_history WHERE id=@id	
					IF(@usertype=0)
					BEGIN
						SELECT @classid=cid FROM basicdata.dbo.user_class WHERE userid=@userid
					END	
					ELSE
					BEGIN
						SELECT @deptid=did FROM basicdata.dbo.teacher WHERE userid=@userid
					END
					SET @year=DATEPART(year, @checktime)
					SET @month=DATEPART(month, @checktime)
					SET @daystr='day_'+CAST(DATEPART(day, @checktime) as varchar)
					SET @checktimestr=substring(convert(varchar(16),@checktime,120),11,6)	
					DECLARE @return int
--					select @kid,@cardno,@userid,@deptid,@classid,@usertype,@year,@month,@daystr,@checktimestr,@id
					EXEC @return=class_attendance_history_everymonth_ADD @kid,@cardno,@userid,@deptid,@classid,@usertype,@year,@month,@daystr,@checktimestr,@id
--					select @return
				fetch next from rs2 into @id
			END
			CLOSE rs2
			deallocate rs2




































GO
