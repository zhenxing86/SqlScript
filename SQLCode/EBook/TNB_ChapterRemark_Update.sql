USE [EBook]
GO
/****** Object:  StoredProcedure [dbo].[TNB_ChapterRemark_Update]    Script Date: 2014/11/24 23:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TNB_ChapterRemark_Update]
 @remarkid int,
 @remarkcontent varchar(400)
 
 AS 
	UPDATE [TNB_ChapterRemark] SET 
 [remarkcontent] = @remarkcontent,
 [commentdatetime] = convert(varchar,getdate(),120)
 	 WHERE remarkid=@remarkid 




GO
