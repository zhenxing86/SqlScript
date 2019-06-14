USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_kmp_KinMasterMessage_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-11-21
-- Description:	园长信箱内容
-- =============================================
CREATE PROCEDURE [dbo].[cms_kmp_KinMasterMessage_GetModel]
@id int
AS
BEGIN
	SELECT id,kid,title,content,createdate,username,e_mail,contractphone,a.address,name
	FROM kmp..KinMasterMessage a LEFT JOIN site b ON a.kid=b.siteid
	WHERE id=@id
END

GO
