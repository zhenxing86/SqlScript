USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[invest_user_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		hanbin
-- Create date: 2009-02-04
-- Description:	得到会员实体对象
-- =============================================
CREATE PROCEDURE [dbo].[invest_user_GetModel]
@userid int
AS
BEGIN
	SELECT * FROM invest_user WHERE userid=@userid
END



GO
