USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[PublishKin]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,along>
-- Create date: <Create 2007-07-10,,>
-- Description:	<Description,,发布幼儿园>
-- =============================================
CREATE PROCEDURE [dbo].[PublishKin]
	 @KID int
AS
BEGIN
	SET NOCOUNT ON;
	update t_kindergarten set ispublish = 1 where id = @KID 
END

GO
