USE [GBAppTemp]
GO
/****** Object:  StoredProcedure [dbo].[getgrwothbook]    Script Date: 2014/11/24 23:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--[gethomebook]

create PROCEDURE [dbo].[getgrwothbook]
@gbid int
 AS 	
declare @hbid int
select @hbid=hbid from growthbook where gbid=@gbid

select * from homebook  where hbid=@hbid
select * from growthbook where gbid=@gbid
select * from familyinfo where gbid =@gbid
select * from childreninfo where gbid= @gbid
select * from foreword where hbid=@hbid
select * from advforeword where hbid=@hbid
select * from garteninfo where hbid=@hbid
select * from classinfo where hbid=@hbid
select * from celltarget where hbid=@hbid
select * from lifephoto where gbid=@gbid
select * from pworkphoto where gbid=@gbid
select * from tworkphoto where gbid=@gbid
select * from section where gbid=@gbid
select * from video where gbid=@gbid
select * from summary where gbid=@gbid
select * from advsummary where gbid=@gbid
select * from celllist where gbid=@gbid
select * from advcelllist where gbid=@gbid
select * from cellset
select * from sectionset
select * from moduleset







GO
