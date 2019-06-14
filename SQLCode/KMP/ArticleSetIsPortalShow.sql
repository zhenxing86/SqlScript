USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[ArticleSetIsPortalShow]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,along>
-- Create date: <Create Date,,2007-07-06>
-- Description:	<Description,,新闻显示在门户>
-- =============================================
CREATE PROCEDURE [dbo].[ArticleSetIsPortalShow] 
	@ID nvarchar(50)
AS
BEGIN
declare @status int
select @status=portalshow from articles where articleid=@id
if (@status=1)
begin
	update articles set PortalShow = 0 where articleid = @id 	
end
else if (@status=0)
begin
	update articles set PortalShow = 1 where articleid = @id 	
end
END



GO
