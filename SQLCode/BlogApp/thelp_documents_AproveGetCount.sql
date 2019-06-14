USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[thelp_documents_AproveGetCount]    Script Date: 2014/11/25 11:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：按审核状态查询公共文档列表数量记录信息 
--项目名称：ZGYEYBLOG
--说明：
--时间：2008-11-21 10:58:07
------------------------------------
CREATE PROCEDURE [dbo].[thelp_documents_AproveGetCount]
@aprove int,
@categoryid int
 AS
	
	DECLARE @TempID int
	SELECT @TempID = count(1) FROM thelp_documents WHERE deletetag=1 and publishdisplay=1 AND aprove=@aprove and (pubcategoryid=@categoryid or pubcategoryid in (select pubcategoryid from pub_doc_category where parentid=@categoryid))
	RETURN @TempID





GO
