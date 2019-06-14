USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[GetMyConsumCount]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetMyConsumCount]
@userid int
 AS 

DECLARE @count int
SELECT @count=count(*)      
  FROM [PayApp].[dbo].[consum_record] t1 left join [sbapp].[dbo].[sb_book] t2
	on t1.sbid=t2.sbid
where userid=@userid
RETURN @count



 --select * FROM [PayApp].[dbo].[consum_record]
GO
