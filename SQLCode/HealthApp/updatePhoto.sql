USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[updatePhoto]    Script Date: 05/14/2013 14:42:21 ******/
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
