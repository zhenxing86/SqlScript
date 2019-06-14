USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[actionlogs_GetCountByActionModul]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-02-09
-- Description:	根据 ActionModul 获取操作日志总数
-- =============================================
CREATE PROCEDURE [dbo].[actionlogs_GetCountByActionModul]
@actionmodul int
AS
BEGIN
	DECLARE @count int
	SELECT @count=count(*) FROM actionlogs WHERE actionmodul=@actionmodul
	RETURN @count
END



GO
