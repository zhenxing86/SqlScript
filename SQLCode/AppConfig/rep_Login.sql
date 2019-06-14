USE applogs
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-06-9
-- Description:	�������ڷ����û���¼���
-- Paradef: @flag 0 ÿ��ͳ�ƣ� ���� ÿ��ͳ��
-- Memo:
	exec rep_Login '2013-06-01','2013-06-10',0
	exec rep_Login '2013-06-01','2013-06-10',1
*/  
ALTER PROCEDURE [dbo].[rep_Login] 
	@bgndate datetime,
	@enddate datetime,
	@flag int = 0
as
BEGIN

	SET NOCOUNT ON

	;with cet as
	(
		select	userid,usertype, 
						case	when @flag=0 
									then CONVERT(char(10),actiondatetime,120) 
									else CONVERT(char(7),actiondatetime,120) end LoginDate,
						ROW_NUMBER()OVER(PARTITION BY userid,CONVERT(char(10),actiondatetime,120) order by getdate())RowNo 
			from applogs..appcenter_log 
			where actiondatetime >= @bgndate 
				AND actiondatetime < dateadd(dd,1,@enddate)
	)
	select	LoginDate, 
					COUNT(CASE WHEN usertype = 0 then 1 else null end) as [�ҳ�],
					COUNT(CASE WHEN usertype = 1 then 1 else null end) as [��ʦ],
					COUNT(CASE WHEN usertype = 98 then 1 else null end) as [����Ա],
					COUNT(CASE WHEN usertype = 97 then 1 else null end) as [԰��],
					COUNT(1) as [�ϼ�]
		from cet 
		where RowNo = 1 
		Group by LoginDate
		order by LoginDate

END
GO