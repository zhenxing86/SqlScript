USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_baseinfo_Update]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：修改一条记录 
--项目名称：
--说明：
--时间：2012/2/6 10:39:26
------------------------------------
CREATE PROCEDURE [dbo].[group_baseinfo_Update]
@gid int,
@kid int,
@name nvarchar(50),
@nickname nvarchar(50),
@descript nvarchar(100),
@logopic nvarchar(200),
@mastename nvarchar(50),
@inuserid int,
@intime datetime,
@order int,
@deletetag int
 AS 
	UPDATE [group_baseinfo] SET 
	[kid] = @kid,[name] = @name,[nickname] = @nickname,[descript] = @descript,[logopic] = @logopic,[mastename] = @mastename,[inuserid] = @inuserid,[intime] = @intime,[order] = @order,[deletetag] = 1
	WHERE gid=@gid 









GO
