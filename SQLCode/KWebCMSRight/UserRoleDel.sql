USE [KWebCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[UserRoleDel]    Script Date: 05/14/2013 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRoleDel] 
@userid int
AS
DELETE FROM sac_user_role WHERE [user_id]=@userid
GO
