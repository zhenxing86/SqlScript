USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[UserGetByOrg]    Script Date: 2014/11/24 23:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[UserGetByOrg]
@org_id int
AS
SELECT [user_id],account,username
FROM sac_user
WHERE org_id=@org_id



GO
