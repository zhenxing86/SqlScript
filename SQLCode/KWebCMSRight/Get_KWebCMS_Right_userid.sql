USE [KWebCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[Get_KWebCMS_Right_userid]    Script Date: 05/14/2013 14:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		wuzy
-- Create date: 2011-7-26
-- Description:	获取站点
-- =============================================
CREATE PROCEDURE [dbo].[Get_KWebCMS_Right_userid] 
@userid int
AS

	declare @uid int
	select @uid=uid from kwebcms.dbo.[site_user] where appuserid=@userid
	
	if(@uid>0)
	begin
		return @uid
	end
	else
	begin
		return 0
	end
GO
