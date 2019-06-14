USE [gyszq]
GO
/****** Object:  StoredProcedure [dbo].[companyappraise_GetListByPage]    Script Date: 2014/11/24 23:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途：查询商家评价记录信息 
--项目名称：ServicePlatform
--说明：
--时间：2009-8-13 9:40:48
------------------------------------
CREATE PROCEDURE [dbo].[companyappraise_GetListByPage]
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
		SELECT companyappraiseid FROM companyappraise WHERE companyid=@companyid and status=1 ORDER BY appraisedatetime DESC

		SET ROWCOUNT @size
			SELECT 
			companyappraiseid,companyid,level,author,userid,parentid,contact,memo,appraisedatetime,fromip
			 FROM [companyappraise] t1 INNER JOIN @tmptable as tmptable ON t1.companyappraiseid=tmptable.tmptableid
			WHERE
				row>@ignore ORDER BY appraisedatetime DESC	

	END
	ELSE
	BEGIN
		SET ROWCOUNT @size
		SELECT 
		companyappraiseid,companyid,level,author,userid,parentid,contact,memo,appraisedatetime,fromip
		 FROM [companyappraise] WHERE companyid=@companyid and status=1 ORDER BY appraisedatetime DESC
	END

GO
