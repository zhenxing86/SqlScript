USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Manage_GetKindergartenByKID]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：按KID取幼儿园
--项目名称：zgyeyblog
--说明：
--时间：2008-12-18 18:01:19
------------------------------------
CREATE PROCEDURE [dbo].[Manage_GetKindergartenByKID]
@kid int
 AS 	
		select
			 t1.kid,t1.kname,'',t1.actiondate,'',0,'',''
		FROM
			 BasicData.dbo.kindergarten t1
		WHERE t1.kid=@kid 

GO
