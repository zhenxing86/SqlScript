USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_templet_GetModel]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		xnl
-- Create date: 2014-05-15
-- Description:	获取一个实体
-- =============================================
CREATE PROCEDURE [dbo].[cms_templet_GetModel]
	@id int
AS
BEGIN
	select * from enlistonline_templet where ID=@id
END

GO
