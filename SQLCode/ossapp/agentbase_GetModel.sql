USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[agentbase_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--GetModel
------------------------------------
CREATE PROCEDURE [dbo].[agentbase_GetModel]
@id int
 AS 
	SELECT 
	 1      ,[ID]    ,[uid]    ,[name]    ,[mastername]    ,[tel]    ,[qq]    ,[isone]    ,[remark]    ,[deletetag]  	 FROM [agentbase]
	 WHERE ID=@id 



GO
