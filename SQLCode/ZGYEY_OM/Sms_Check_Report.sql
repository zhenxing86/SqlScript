USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Sms_Check_Report]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Sms_Check_Report]   
@ordertype int
AS

declare @curyear int
declare @curmonth int
set @curyear=datepart(year,getdate())
set @curmonth=datepart(month,getdate())

if(@ordertype=1)
begin
--select kid,kname,smscount,smsnum from reportapp..rep_smscount t1 
--inner join kwebcms..site_config t2 on t1.kid=t2.siteid
--where [year]=@curyear and [month]=@curmonth
--order by smsnum desc

select t1.siteid,t2.name,0,t1.smsnum
from
kwebcms..site_config t1 left join kwebcms..site t2 on t1.siteid=t2.siteid
where t1.smsnum>20
order by t1.smsnum desc

end
else if (@ordertype=2)
begin
select kid,kname,smscount,smsnum from reportapp..rep_smscount t1 
inner join kwebcms..site_config t2 on t1.kid=t2.siteid
where [year]=@curyear and [month]=@curmonth
order by smscount desc
end






GO
