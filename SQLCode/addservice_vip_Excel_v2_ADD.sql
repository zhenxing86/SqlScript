USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_vip_Excel_v2_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--Add
------------------------------------
CREATE PROCEDURE [dbo].[addservice_vip_Excel_v2_ADD]
  @kid int,
 @cname varchar(200),
 @cuname varchar(200),
 @p1name varchar(200),
 @ftime datetime,
 @ltime datetime,
 @ispay int,
 @isopen int,
 @paytime datetime,
 @isproxy int,
 @uid int,
 @intime datetime
 
 AS 
	INSERT INTO [addservice_vip_Excel_v2](
  [kid],
 [cname],
 [cuname],
 [p1name],
 [ftime],
 [ltime],
 [ispay],
 [isopen],
 [paytime],
 [isproxy],
 [uid],
 [intime]
 
	)VALUES(
	
  @kid,
 @cname,
 @cuname,
 @p1name,
 @ftime,
 @ltime,
 @ispay,
 @isopen,
 @paytime,
 @isproxy,
 @uid,
 @intime
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
