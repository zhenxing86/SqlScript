USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[site_GetProviceOrCityName]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		liaoxin
-- Create date: 2009-7-22
-- Description:	从KMP根据ID查询对应身份名称
-- =============================================
CREATE PROCEDURE [dbo].[site_GetProviceOrCityName]
	@Id int
AS
BEGIN
	select Title from T_Area where ID=@Id
END


GO
