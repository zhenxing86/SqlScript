USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[SiteCount]    Script Date: 2014/11/24 23:34:44 ******/
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
