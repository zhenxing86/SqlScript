USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[UserSettingInfo_GetModel]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		lx
-- Create date: 获取用户个人设置信息
-- Description:	<Description,,>
--exec UserSettingInfo_GetModel 83963
-- =============================================
CREATE PROCEDURE [dbo].[UserSettingInfo_GetModel]
@userid int
AS
BEGIN
    select t1.account,t1.[password],t2.blogtitle,t2.photowatermark,t2.[description],t1.network 
	from [user] t1 
	inner join user_bloguser t3 on t1.userid=t3.userid 
	inner join blogapp..blog_baseconfig t2
    on t2.userid=t3.bloguserid 
	where t1.userid=@userid and t3.userid=@userid
END




GO
