USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[RoleRightDel]    Script Date: 2014/11/24 23:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RoleRightDel]
@role_id int
AS
DELETE FROM sac_role_right WHERE role_id=@role_id



GO
