USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[beforefollowremark_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--GetModel
------------------------------------
CREATE PROCEDURE [dbo].[beforefollowremark_GetModel]
@id int
 AS 
	SELECT 
	 1      ,[ID]    ,[bf_Id]    ,[remark]    ,[remindtime]    ,[uid]    ,[intime]    ,[deletetag],remindtype ,lv 	 FROM [beforefollowremark]
	 WHERE ID=@id 





GO
