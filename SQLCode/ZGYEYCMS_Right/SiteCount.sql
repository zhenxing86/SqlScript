USE [ZGYEYCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[SiteCount]    Script Date: 05/14/2013 14:58:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		张启平
-- Create date: 2010-7-29
-- Description:	获取列表数量
-- =============================================
CREATE PROCEDURE [dbo].[SiteCount] 

AS
DECLARE @RESULT int
SET @RESULT=ISNULL((SELECT COUNT(*) FROM sac_site),0)
RETURN @RESULT
GO
