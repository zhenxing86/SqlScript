USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[OrderStat]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[OrderStat]

 AS 
select top 10 convert(varchar,actiondatetime,112) as date ,count(1),sum(plus_amount) from order_record where status=1 
group by convert(varchar,actiondatetime,112)  
order by date desc

select sum(plus_amount) from order_record where status=1 


select t2.book_title, t1.sbid,count(1) as buycount from dbo.consum_record t1 left join  
sbapp..sb_book t2 on t1.sbid=t2.sbid
group by t2.book_title, t1.sbid
order by buycount desc



GO
