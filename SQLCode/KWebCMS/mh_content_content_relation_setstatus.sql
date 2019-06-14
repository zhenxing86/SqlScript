USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[mh_content_content_relation_setstatus]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		along
-- Create date: 2009-12-25
-- Description:	修改子分类
-- =============================================
create PROCEDURE [dbo].[mh_content_content_relation_setstatus]
@contentid int,
@status int
AS
BEGIN
	UPDATE mh_content_content_relation SET status=@status WHERE s_contentid=@contentid
	IF @@ERROR <> 0
	BEGIN
		RETURN -1
	END
	ELSE
	BEGIN
		RETURN 1
	END
END





GO
