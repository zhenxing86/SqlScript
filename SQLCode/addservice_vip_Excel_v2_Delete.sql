USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_vip_Excel_v2_Delete]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--Delete
------------------------------------
CREATE PROCEDURE [dbo].[addservice_vip_Excel_v2_Delete]
@id int
 AS 
	DELETE [addservice_vip_Excel_v2]
	 WHERE ID=@id 



GO
