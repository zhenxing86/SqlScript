USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_expertsforum_Delete]    Script Date: 2014/11/24 23:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：根据id删除专家讲坛信息
--项目名称：家庭教育中心 com.zgyey.fmcapp.cms  
--说明: 
--时间：2013-6-17 15:50:29
--exec fmc_expertsforum_Delete 1
------------------------------------
CREATE PROCEDURE [dbo].[fmc_expertsforum_Delete]
@id int
 AS 
	DELETE [fmc_expertsforum]
	 WHERE ID=@id

GO
