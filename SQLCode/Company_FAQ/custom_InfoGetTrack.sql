USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[custom_InfoGetTrack]    Script Date: 2014/11/24 22:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[custom_InfoGetTrack]

AS
SELECT
   customID,customName,regDateTime
FROM
   custom_data
WHERE 
   synchro=0


GO
