USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[MH_site_user_GetModel]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hanbin
-- ALTER date: 2009-06-05
-- Description:	GetModel
--exec [MH_site_user_GetModel] 191599
-- =============================================
CREATE PROCEDURE [dbo].[MH_site_user_GetModel]
@userid int
AS
BEGIN
	SELECT t2.kid,t2.userid,t2.account,t2.[password],t2.[name],t2.regdatetime,t2.[usertype] 
	FROM   basicdata..[user] t2 
	 where t2.userid=@userid

END

GO
