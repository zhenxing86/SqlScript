USE [Company_FAQ]
GO
/****** Object:  StoredProcedure [dbo].[admin_Delete]    Script Date: 2014/11/24 22:59:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：删除名校 
--项目名称：gdzkw
--说明：
--时间：2010-4-1 16:47:18
------------------------------------
create PROCEDURE [dbo].[admin_Delete]
@id int
 AS 
	DELETE [admin]
	 WHERE id=@id 

IF(@@ERROR<>0)
BEGIN
	RETURN (-1)
END
ELSE
BEGIN
	RETURN (1)
END

GO
