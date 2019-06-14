USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[GetHomeBookReportListByKID]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:	lx
-- Create date: 20110818
-- Description:获取家园练习册报表
--
-- =============================================
CREATE PROCEDURE [dbo].[GetHomeBookReportListByKID] 
@kid int,
@gid int,
@page int,
@size int
AS
BEGIN

    
  	

		SELECT t1.cname,0,0,t1.cid
		from basicdata..class t1 where t1.kid=@kid and t1.grade=@gid and t1.deletetag=1
		order by t1.[order] desc
  	 
	 
END



GO
