USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[user_infoGet]    Script Date: 2014/11/24 22:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		张启平
-- Create date: 2010-12-20
-- Description:	获取指定人员
-- =============================================
CREATE PROCEDURE [dbo].[user_infoGet]
@userid int
AS
SELECT
      account,username,password
FROM
   sac_User
WHERE
   [user_id]=@userid AND status=1

GO
