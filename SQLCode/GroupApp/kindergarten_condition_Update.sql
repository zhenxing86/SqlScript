USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[kindergarten_condition_Update]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--鐢ㄩ€旓細淇敼涓€鏉¤褰?
--椤圭洰鍚嶇О锛?
--璇存槑锛?
--鏃堕棿锛?012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[kindergarten_condition_Update]
 @ID int,
 @kid int,
 @area1 varchar(50),
 @area2 varchar(50),
 @area3 varchar(50),
 @area4 varchar(50),
 @book varchar(50),
 @econtent varchar(50),
 @inuserid int,
 @intime datetime,
 @unitcode varchar(100),
 @postcode varchar(100),
 @officetel varchar(100),
 @email varchar(100),
 @inputmail varchar(100),
 @inputname varchar(100),
 @fixtel varchar(100),
 @master varchar(100),
 @mappoint varchar(100),
 @mapdesc varchar(400)
 
 AS 
	UPDATE [kindergarten_condition] SET 
  [kid] = @kid,
 [area1] = @area1,
 [area2] = @area2,
 [area3] = @area3,
 [area4] = @area4,
 [book] = @book,
 [econtent] = @econtent,
 [inuserid] = @inuserid,
 [intime] = @intime,
 [unitcode] = @unitcode,
 [postcode] = @postcode,
 [officetel] = @officetel,
 [email] = @email,
 [inputmail] = @inputmail,
 [inputname] = @inputname,
 [fixtel] = @fixtel,
 [master] = @master,
 [mappoint] = @mappoint,
 [mapdesc] = @mapdesc
 	 WHERE ID=@ID 



GO
