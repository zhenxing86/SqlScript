USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[GetClassBackgroundmusicCountBykid]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		lx
-- Create date: 2011-7
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetClassBackgroundmusicCountBykid]
@kid int
AS
BEGIN
 DECLARE @returnValue int
 SELECT @returnValue=COUNT(*) from class_backgroundmusic where kid=@kid and status=1
 return @returnValue
END





GO
