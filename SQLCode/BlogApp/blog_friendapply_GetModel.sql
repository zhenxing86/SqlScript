USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_friendapply_GetModel]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：得到好友申请实体信息
--项目名称：ZGYEYBLOG
--说明：
--时间：2008-10-02 09:57:22
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[blog_friendapply_GetModel]
@friendapplyid int
 AS 
	SELECT 
	t1.friendapplyid,t1.sourceuserid,t1.targetuserid,t1.applystatus,t1.remark,t1.invitetime
	 FROM blog_friendapply t1
	 WHERE t1.friendapplyid=@friendapplyid






GO
