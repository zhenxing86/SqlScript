USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[mapsmodel_ADD]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[mapsmodel_ADD]
  @kname varchar(50),
 @mappoint varchar(50),
 @mapdesc varchar(50),
 @isgood int
 
 AS 
	INSERT INTO kindergarten_condition(
  [kname],
 [mappoint],
 [mapdesc],
 [isgood]
 
	)VALUES(
	
  @kname,
 @mappoint,
 @mapdesc,
 @isgood
 	
	)

    declare @kid int
	set @kid=@@IDENTITY
	RETURN @kid



GO
