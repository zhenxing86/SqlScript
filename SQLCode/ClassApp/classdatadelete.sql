USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[classdatadelete]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[classdatadelete]
@targetcid int
 AS

	delete class_notice where classid=@targetcid

	delete class_notice_class where classid=@targetcid

	delete class_album  where classid=@targetcid

	delete class_schedule  where classid=@targetcid

	delete class_video  where classid=@targetcid

	delete class_backgroundmusic where classid=@targetcid

GO
