USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kweb_site_UpdateIndexPage]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		along
-- Create date: 2012-04-24
-- Description:	是否是要更新首页
-- =============================================
CREATE PROCEDURE [dbo].[kweb_site_UpdateIndexPage]
@siteid int
AS
BEGIN
	update htmlupdate set indexpage=0,gendatetime=getdate() where siteid=@siteid
	
	return 1

END



--select * from htmlupdate
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'kweb_site_UpdateIndexPage', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
