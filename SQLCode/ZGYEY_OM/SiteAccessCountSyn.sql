USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[SiteAccessCountSyn]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create PROCEDURE [dbo].[SiteAccessCountSyn]
 AS 


create table #tmp
(
tsiteid int,
account int
)

insert into #tmp(tsiteid,account)
select siteid,count(1) from logdata..site_accessdetail group by siteid

update kwebcms..site set accesscount=accesscount+account
from #tmp where siteid=tsiteid

drop table #tmp

delete logdata..site_accessdetail







GO
