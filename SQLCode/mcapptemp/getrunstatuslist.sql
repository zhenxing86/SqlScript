USE [mcapptemp]
GO
/****** Object:  StoredProcedure [dbo].[getrunstatuslist]    Script Date: 2014/11/24 23:19:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














------------------------------------
--用途：查询记录信息 
--项目名称：
--说明：
--时间：2012-10-16 21:55:38
--[getrunstatuslist] 12511
------------------------------------
create PROCEDURE [dbo].[getrunstatuslist]

 AS 	

SELECT top 100 [devid]
      ,[kid]
      ,[status]
      ,[adate]
  FROM [mcapp].[dbo].[runstatus]
order by adate desc












GO
