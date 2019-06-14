USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[GetClassBackgroundmusicCountByClassid]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		lx
-- Create date: 2011-7
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetClassBackgroundmusicCountByClassid]
@classid int
AS
BEGIN
 DECLARE @returnValue int
 SELECT @returnValue=COUNT(*) from class_backgroundmusic where classid=@classid and status=1
 return @returnValue
END





GO
