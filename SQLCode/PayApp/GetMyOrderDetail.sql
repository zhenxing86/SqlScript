USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[GetMyOrderDetail]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetMyOrderDetail]
@userid int
 AS 

SELECT top 1 [orderid]
      ,[userid]
      ,[plus_amount]
      ,[plus_bean]
      ,[actiondatetime]
      ,[orderno]
      ,[status]
  FROM [PayApp].[dbo].[order_record]
where userid=@userid
and status=0
order by orderid desc





GO
