USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[thelp_documents_GetCountByKinDocCategoryid]    Script Date: 2014/11/25 11:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：查询共享幼儿园文档数
--项目名称：ZGYEYBLOG
--说明：
--时间：2009-6-30 21:00:07
------------------------------------
CREATE PROCEDURE [dbo].[thelp_documents_GetCountByKinDocCategoryid]
@categoryid int
 AS
	
	DECLARE @TempID int

	SELECT @TempID=count(1) FROM thelp_documents  WHERE deletetag=1 and (kindoccategoryid=@categoryid or kindoccategoryid in (select kincategoryid from kin_doc_category where parentid=@categoryid)) and kindisplay=1 
	RETURN @TempID





GO
