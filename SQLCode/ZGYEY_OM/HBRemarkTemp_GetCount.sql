USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[HBRemarkTemp_GetCount]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[HBRemarkTemp_GetCount]
@tmptype nvarchar(50),
@catid int
AS
BEGIN
	DECLARE @count int
	SELECT @count=count(*) FROM hb_remark_temp WHERE tmptype=@tmptype and catid=@catid 
	RETURN @count
END



GO
