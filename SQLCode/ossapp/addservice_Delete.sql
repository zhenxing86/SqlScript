USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_Delete]    Script Date: 2014/11/24 23:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Delete
------------------------------------
CREATE PROCEDURE [dbo].[addservice_Delete]
@id int
 AS 
	DELETE [addservice]
	 WHERE ID=@id 



GO
