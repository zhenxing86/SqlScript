USE [KWebCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[UserPasswdUpdate]    Script Date: 05/14/2013 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：用户 密码重置
--项目名称：Right
--说明：
--时间：2010-5-6
------------------------------------
create PROCEDURE [dbo].[UserPasswdUpdate]
@user_id int
 AS 
	UPDATE sac_user SET [password] = '123456' WHERE [user_id]=@user_id

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END
GO
