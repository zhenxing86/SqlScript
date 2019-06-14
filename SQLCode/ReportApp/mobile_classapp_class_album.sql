USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[mobile_classapp_class_album]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[mobile_classapp_class_album]
@classid int,
@kid int
as

select -1,coverphoto paths,title,albumid,convert(varchar,createdatetime,120),author,photocount 
,0,coverphoto,coverphotodatetime,net,coverphotodatetime
from classapp..class_album 
where kid=@kid and status=1 and classid=@classid order by 
lastuploadtime desc



GO
