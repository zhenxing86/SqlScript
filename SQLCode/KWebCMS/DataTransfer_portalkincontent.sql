USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[DataTransfer_portalkincontent]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hanbin
-- Create date: 2009-05-18
-- Description:	数据转换--portalkincontent
-- =============================================
CREATE PROCEDURE [dbo].[DataTransfer_portalkincontent]
AS
BEGIN
	--插入园长评语
	INSERT INTO portalkincontent
	SELECT contentid,t2.siteid,1 FROM cms_content t1,cms_category t2
	WHERE t1.categoryid=t2.categoryid AND t2.siteid=18 AND categorycode='PortalYZPJ' and t1.deletetag = 1

	--插入招聘专栏
	INSERT INTO portalkincontent
	SELECT contentid,t2.siteid,0 FROM cms_content t1,cms_category t2
	WHERE t1.categoryid=t2.categoryid AND t2.siteid=18 AND categorycode='zpzl' and t1.deletetag = 1
END


GO
