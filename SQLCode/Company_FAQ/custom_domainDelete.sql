USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[custom_domainDelete]    Script Date: 2014/11/24 22:59:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		张启平
-- Create date: 2010-7-15
-- Description:	实现一级域名删除
-- =============================================
CREATE PROCEDURE [dbo].[custom_domainDelete] 
@domainID int
AS
DELETE FROM
     custom_domain
WHERE
    domainID=@domainID
RETURN @@ROWCOUNT


GO
