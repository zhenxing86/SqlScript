USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[class_GetKindergartenGuestOpen]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：幼儿园是否游客访问
--项目名称：classhomepage
--时间：2009-02-23 9:23:01
------------------------------------
CREATE   PROCEDURE [dbo].[class_GetKindergartenGuestOpen]
@kid int
 AS	
	
	DECLARE @guestopen INT
	SELECT  @guestopen=guestopen from kwebcms..site_config  WHERE siteid=@kid
	RETURN @guestopen







GO
