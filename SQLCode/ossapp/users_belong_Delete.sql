USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[users_belong_Delete]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--Delete
------------------------------------
CREATE PROCEDURE [dbo].[users_belong_Delete]
@id int
 AS 
	DELETE [users_belong]
	 WHERE puid=@id 




GO
