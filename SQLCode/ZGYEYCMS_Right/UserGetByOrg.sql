USE [ZGYEYCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[UserGetByOrg]    Script Date: 05/14/2013 14:58:19 ******/
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
