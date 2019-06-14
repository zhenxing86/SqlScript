USE [PayAppDemo]
GO
/****** Object:  StoredProcedure [dbo].[PurchaseBook]    Script Date: 2014/11/24 23:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PurchaseBook]
@userid int,
@sbid nvarchar(50)
 AS 
declare @curprice int
declare @bookprice int

if not exists(select * from consum_record where userid=@userid and sbid=@sbid)
begin
	select @bookprice=bean_price from sbapp..sb_book where sbid=@sbid


		update user_pay_account set 
		re_beancount=re_beancount-@bookprice
		where userid=@userid    


		INSERT INTO consum_record(
		[userid],[sbid],[redu_bean],[actiondatetime]
		)VALUES(
		@userid,@sbid,@bookprice,getdate()
		)

		INSERT INTO sbapp..my_book(
		[userid],[sbid],[buydate],[readcount]
		)VALUES(
		@userid,@sbid,getdate(),0
		)

		Return 1
end

  Return 1






GO
