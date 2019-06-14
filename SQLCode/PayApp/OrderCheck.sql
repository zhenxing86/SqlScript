USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[OrderCheck]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[OrderCheck] 0
--[OrderCheck] 1
CREATE PROCEDURE [dbo].[OrderCheck]
@status int
 AS 

if(@status=0)
begin
select top 50 t4.kname,t2.name,t2.mobile,t2.account,t1.userid,t1.plus_amount,t1.actiondatetime,t1.orderno 
from order_record t1 
left join basicdata..[user] t2 on t1.userid=t2.userid
left join basicdata..kindergarten t4 on t2.kid=t4.kid
where t1.status=0 and t2.usertype=0
order by t1.orderid desc
end
else
begin
select top 50 t4.kname,t2.name,t2.mobile,t2.account,t1.userid,t1.plus_amount,t1.actiondatetime,t1.orderno 
from order_record t1 
left join basicdata..[user] t2 on t1.userid=t2.userid
left join basicdata..kindergarten t4 on t2.kid=t4.kid
where t1.status=1 and t2.usertype=0
order by t1.orderid desc
end


GO
