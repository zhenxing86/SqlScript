USE [EBook]
GO
/****** Object:  StoredProcedure [dbo].[TNB_Chapter_Exquisite]    Script Date: 2014/11/24 23:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--Update
------------------------------------
CREATE  PROCEDURE [dbo].[TNB_Chapter_Exquisite]
  @chapterid int,
  @exquisite int
 
 AS 
update TNB_Chapter set exquisite=@exquisite where chapterid=@chapterid

return @chapterid


GO
