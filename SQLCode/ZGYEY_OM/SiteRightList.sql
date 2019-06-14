USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[SiteRightList]    Script Date: 2014/11/24 23:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：选择站点权限 
--项目名称：Right
--说明：
--时间：2010-5-5
------------------------------------
create PROCEDURE [dbo].[SiteRightList]
@site_id int
AS 
BEGIN
	select distinct right_id from sac_role_right where role_id in(
    select role_id from sac_role where [site_id]=@site_id)
END





GO
