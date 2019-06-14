USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_baseinfo_ExistsByKid]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




------------------------------------
--用途：是否已经存在 
--项目名称：
--说明：
--时间：2012/2/6 10:39:26
------------------------------------
CREATE PROCEDURE [dbo].[group_baseinfo_ExistsByKid]
@kid int
AS
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM [group_baseinfo] WHERE kid=@kid 
	IF @TempID = 0
		RETURN 0
	ELSE
		RETURN 1








GO
