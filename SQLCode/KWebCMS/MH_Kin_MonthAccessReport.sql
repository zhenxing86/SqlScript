USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[MH_Kin_MonthAccessReport]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		along
-- Create date: 2010-08-23
-- Description:	get baihangbang
-- =============================================
create PROCEDURE [dbo].[MH_Kin_MonthAccessReport]
AS
BEGIN
	select t2.name,t2.sitedns,t2.accesscount  from site_monthaccesstable t1 
	left join site t2 on t1.siteid=t2.siteid
	order by accesscount desc
END




GO
