USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[site_copyright_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[site_copyright_Update]
@siteid int,
@contents varchar(max)
as

	


IF EXISTS (SELECT copyrightid,siteid,contents FROM kwebcms..site_copyright WHERE siteid=@siteid)
	BEGIN
		update  KWebCMS..site_copyright set contents=@contents where siteid=@siteid
	END
	ELSE
	BEGIN
		insert into KWebCMS..site_copyright(siteid,contents) values(@siteid,@contents)
	END

GO
