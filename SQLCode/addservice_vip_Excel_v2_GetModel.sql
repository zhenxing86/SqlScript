USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_vip_Excel_v2_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--GetModel
------------------------------------
CREATE PROCEDURE [dbo].[addservice_vip_Excel_v2_GetModel]
@id int
 AS 
	SELECT 
	 1      ,[ID]    ,[kid]    ,[cname]    ,[cuname]    ,[p1name]    ,[ftime]    ,[ltime]    ,[ispay]    ,[isopen]    ,[paytime]    ,[isproxy]    ,[uid]    ,[intime]  	 FROM [addservice_vip_Excel_v2]
	 WHERE ID=@id 



GO
