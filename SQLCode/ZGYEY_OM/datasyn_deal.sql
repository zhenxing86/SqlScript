USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[datasyn_deal]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





------------------------------------
--用途：[datasyn_deal]
--[datasyn_deal]
--说明：
--时间：2009-3-2 15:20:13
--[datasyn_deal]  '2012-09-08','2012-09-20',2
--select count(*) from classapp..class_photos where uploaddatetime between '2012-06-9' and '2012-06-10' and net>1@net
-----------------------------------
CREATE PROCEDURE [dbo].[datasyn_deal]
@startdate datetime,
@enddate datetime,
@net int
 AS 
/*	
declare @startdate datetime
declare @enddate datetime 
declare @net int
set @startdate='2012-06-01'
set @enddate = '2012-08-10'	
set @net=1

update classapp..class_album set net=1 where lastuploadtime between @startdate and @enddate and net>@net

*/
--classphoto
--select * from classapp..class_photos where uploaddatetime between @startdate and @enddate and net>@net

--classvideo
--select * from classapp..class_video where uploaddatetime between @startdate and @enddate and net>@net

--classmusic
--select * from classapp..class_backgroundmusic where uploaddatetime between @startdate and @enddate and net>@net

--blogphoto
--select * from blogapp..album_photos where uploaddatetime between @startdate and @enddate and net>@net

--kwebphoto
--select * from kwebcms..cms_photo where createdatetime between @startdate and @enddate and net>@net

--kwebattachs
--select * from kwebcms..cms_contentattachs where createdatetime between @startdate and @enddate and net>@net

--classphoto
update classapp..class_photos set net=1 where uploaddatetime between @startdate and @enddate and net>@net

update classapp..class_album set net=1 where lastuploadtime between @startdate and @enddate and net>@net
--classvideo
update classapp..class_video set net=1 where uploaddatetime between @startdate and @enddate and net>@net

--classmusic
update classapp..class_backgroundmusic set net=1 where uploaddatetime between @startdate and @enddate and net>@net

--blogphoto
update blogapp..album_photos set net=1 where uploaddatetime between @startdate and @enddate and net>@net

--kwebphoto
update kwebcms..cms_photo set net=1 where createdatetime between @startdate and @enddate and net>@net

--kwebattachs
update kwebcms..cms_contentattachs set net=1 where createdatetime between @startdate and @enddate and net>@net

	IF @@ERROR <> 0 
	BEGIN 		
	   RETURN (-1)
	END
	ELSE
	BEGIN	
	   RETURN (1)
	END



























GO
