USE [AppLogs]
GO
/****** Object:  StoredProcedure [dbo].[user_token_add_Android]    Script Date: 2014/11/24 21:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[user_token_add_Android]
@token varchar(100),
@info  int,
@createdatetime datetime,
@expridate datetime
	
AS
BEGIN

  INSERT INTO mobile_user_tokens(token,info,createdatetime,expiredatatime)
  VALUES (@token,@info,getdate(),@expridate)  
  
  select s.smsnum from kwebcms..site_config s
	inner join BasicData..[user] u on u.kid=s.siteid
		where u.userid=@info
  
END

GO
