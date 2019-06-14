USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[EduApp_GetUserInfoMode_ByUserID]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		lx
-- Create date: 2011-06-28
-- Description: 获取用户基本信息
--exec ClassApp_GetUserInfoMode_ByUserID 84557
-- =============================================
CREATE PROCEDURE [dbo].[EduApp_GetUserInfoMode_ByUserID] 
@userid int
AS
BEGIN
     
select userid,username,b.kid,94160,case when b.kid=0 then 0 else 1 end,'http://zsxrk.zgyey.com' from GroupApp..group_user u
inner join GroupApp..group_baseinfo b on u.gid=b.gid

where userid=@userid


END




GO
