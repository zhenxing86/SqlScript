USE [GameApp]
GO
/****** Object:  StoredProcedure [dbo].[PayBean]    Script Date: 2014/11/24 23:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[PayBean]
@userid int,
@gradeid int
 AS 

	

if not exists(select * from lq_paydetail where userid=@userid and lq_gradeid=@gradeid)
begin

	update payapp..user_pay_account set 
		re_beancount=re_beancount-50
		where userid=@userid

	insert into lq_paydetail(userid,paydate,lq_gradeid) values(@userid,getdate(),@gradeid)
end

IF @@ERROR <> 0 
	BEGIN 		
	   RETURN (-1)
	END
	ELSE
	BEGIN	
	   RETURN (1)
	END



GO
