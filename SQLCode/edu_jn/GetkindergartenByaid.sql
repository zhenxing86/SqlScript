USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[GetkindergartenByaid]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[GetkindergartenByaid]
@did int
,@aid int
,@uid int
as 

--declare @udid int
--
--select @udid=did from group_user where userid=@uid
--
--create table #temp
--(
--dids int
--)
--
--insert into #temp(dids)
--select did from dbo.group_department g
--where deletetag=1 and superiorid=@udid or did=@udid
--
--
--
--select userid,username from dbo.group_user
--inner join #temp on dids=did
--where  areaid=@aid
-- and (did=@did or @did=-1)
--
--drop table #temp
select userid,username from dbo.group_user where areaid=@aid





GO
