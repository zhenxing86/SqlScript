USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_kmpuserGetList]    Script Date: 2014/11/24 22:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：取博客论坛用户ID列表
--项目名称：zgyeyblog
--说明：
--时间：2010-02-28 22:56:46
------------------------------------
CREATE PROCEDURE [dbo].[blog_kmpuserGetList]
	@kid int
 AS

select account,userid from basicdata..[user] 
where kid=@kid and deletetag=1

GO
