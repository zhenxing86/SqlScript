USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[varify_resetPossword]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		xzx
-- Project: com.zgyey.verify
-- Create date: 2013-06-06
-- Description:	修改密码
-- =============================================
CREATE PROCEDURE [dbo].[varify_resetPossword]
@userid int,
@newPassword nvarchar(50)
AS
BEGIN
  
  update BasicData..[user] set [password] = @newPassword 
	where userid = @userid

	if @@ERROR<>0
		return 0
	else return 1
END


GO
