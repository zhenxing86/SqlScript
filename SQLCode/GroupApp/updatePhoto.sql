USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[updatePhoto]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatePhoto]
@bid int,
@weburl varchar(200),
@spath varchar(200),
@bpath varchar(200)
AS
   update BaseInfo set weburl = @weburl,smallPath = @spath,bigPath = @bpath,uphoto=@weburl+@spath where id= @bid
GO
