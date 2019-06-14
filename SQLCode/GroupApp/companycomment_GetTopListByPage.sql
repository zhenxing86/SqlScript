USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[companycomment_GetTopListByPage]    Script Date: 2014/11/24 23:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：查询商家评论信息 
--项目名称：ServicePlatform
--说明：
--时间：2009-7-11 14:48:59
------------------------------------
CREATE PROCEDURE [dbo].[companycomment_GetTopListByPage]
@companyid int,
@page int,
@size int
 AS 
	IF(@page>1)
	BEGIN
		DECLARE @prep int,@ignore int
		
		SET @prep = @size * @page
		SET @ignore=@prep - @size

		DECLARE @tmptable TABLE
		(
			--定义临时表
			row int IDENTITY (1, 1),
			tmptableid bigint
		)

		SET ROWCOUNT @prep
		INSERT INTO @tmptable(tmptableid)
		SELECT companycommentid FROM companycomment WHERE companyid=@companyid and status=1 and parentid=0 ORDER BY commentdatetime DESC

		SET ROWCOUNT @size
		SELECT companycommentid,companyid,author,userid,content,parentid,commentdatetime,contact,fromip
		FROM 
			@tmptable AS tmptable
		INNER JOIN 
			companycomment t1 ON tmptable.tmptableid=t1.companycommentid
		WHERE 
			row >  @ignore ORDER BY commentdatetime DESC
	
	END
	ELSE
	BEGIN
		SET ROWCOUNT @size
		SELECT 
		companycommentid,companyid,author,userid,content,parentid,commentdatetime,contact,fromip
		 FROM [companycomment] WHERE companyid=@companyid and status=1 and parentid=0 ORDER BY commentdatetime DESC
	END

GO
