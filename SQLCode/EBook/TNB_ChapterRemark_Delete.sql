USE [EBook]
GO
/****** Object:  StoredProcedure [dbo].[TNB_ChapterRemark_Delete]    Script Date: 2014/11/24 23:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Delete
------------------------------------
CREATE PROCEDURE [dbo].[TNB_ChapterRemark_Delete]
@id int
 AS 
	DELETE [TNB_ChapterRemark]
	 WHERE remarkid=@id 



GO
