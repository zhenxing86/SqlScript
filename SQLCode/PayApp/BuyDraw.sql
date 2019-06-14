USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[BuyDraw]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[BuyDraw]
@userid int,
@beancount int,
@buytype int
 AS

if exists(select 1 from user_pay_account where userid=@userid)
begin
	

		update user_pay_account set 
		re_beancount=re_beancount-@beancount
		where userid=@userid	

		exec drawapp..[updatePay] @userid, @buytype	
		Return 1
end
else
begin
		  Return 0
end

	












GO
