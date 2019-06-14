USE [EBook]
GO
/****** Object:  StoredProcedure [dbo].[PayGrowthbookBean]    Script Date: 2014/11/24 23:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PayGrowthbookBean]
@userid int,
@gbid int
 AS 

	update payapp..user_pay_account set 
		re_beancount=re_beancount-150
		where userid=@userid

	insert into gb_paydetail(userid,paydate,growthbookid) values(@userid,getdate(),@gbid)


IF @@ERROR <> 0 
	BEGIN 		
	   RETURN (-1)
	END
	ELSE
	BEGIN	
	   RETURN (1)
	END


GO
