USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[ismanage_pro]    Script Date: 2014/11/24 23:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ismanage_pro]
	@userid int,	
	@kid int
 AS 

declare @uid int
		DECLARE @ismanage int
		select @uid=[uid] from kwebcms.dbo.[site_user] where appuserid=@userid
		if(@uid is null)
		begin
			set @uid=0
		end
		IF EXISTS(SELECT 1 FROM KWebCMS_Right.dbo.sac_user_role INNER JOIN KWebCMS_Right.dbo.sac_role ON sac_role.role_id=sac_user_role.role_id WHERE [user_id]=@uid and (role_name='管理员' or role_name='园长'))
		BEGIN
			set @ismanage=1
		END 
		ELSE
		BEGIN
			set @ismanage=0
		END
		select @ismanage

GO
