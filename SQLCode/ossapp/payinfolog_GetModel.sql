USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[payinfolog_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--GetModel
------------------------------------
CREATE PROCEDURE [dbo].[payinfolog_GetModel]
@id int
 AS 
	SELECT 
	 1      ,[ID]    ,[pid]    ,[kid]    ,[kname]    ,[payby]    ,[paytype]    ,[money]    ,[paytime]    ,[isinvoice]    ,[invoicedec]    ,[uid]    ,[remark]    ,[isproxy]    ,[proxymoney]    ,[firsttime]    ,[lasttime]    ,[proxystate]    ,[proxytime]    ,[proxycid]    ,[deletetag]  	 FROM [payinfolog]
	 WHERE ID=@id 



GO
