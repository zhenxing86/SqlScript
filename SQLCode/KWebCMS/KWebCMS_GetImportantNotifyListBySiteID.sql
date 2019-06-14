USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[KWebCMS_GetImportantNotifyListBySiteID]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		LX
-- Create date: 2009-07-02
-- Description:	重要通知读取根据站点ID
-- =============================================
CREATE  PROCEDURE [dbo].[KWebCMS_GetImportantNotifyListBySiteID]
@page int,
@size int,
@siteid int
AS
BEGIN
	IF(@page>1)
	BEGIN
		DECLARE @count int
		DECLARE @ignore int
		SET @count=@page*@size
		SET @ignore=@count-@size

		DECLARE @temptable TABLE
		(
			row int primary key identity(1,1),
			tempid int
		)
		
		SET ROWCOUNT @count
		INSERT INTO @temptable 
		SELECT id FROM zgyey_om..t_titleurl 
		WHERE type=3 AND kid=@siteid ORDER BY createdate desc

		SELECT id,url,title,createdate,color,kid
		FROM zgyey_om..t_titleurl,@temptable
		WHERE id=tempid AND row>@ignore
		ORDER BY createdate DESC		
	END
	ELSE IF(@page=1)
	BEGIN
		SET ROWCOUNT @size
		SELECT id,url,title,createdate,color,kid
		FROM zgyey_om..t_titleurl 
		WHERE type=3 AND kid=@siteid ORDER BY createdate desc		
	END
	ELSE
	BEGIN
		SELECT id,url,title,createdate,color,kid
		FROM zgyey_om..t_titleurl 
		WHERE type=3 AND kid=@siteid ORDER BY createdate desc
	END
END







GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'KWebCMS_GetImportantNotifyListBySiteID', @level2type=N'PARAMETER',@level2name=N'@page'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'KWebCMS_GetImportantNotifyListBySiteID', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
