USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_user_CheckName]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--用途：查询记录信息 
--项目名称：Account
------------------------------------
create PROCEDURE [dbo].[group_user_CheckName]
	 @account varchar(100)
	  		
	 AS
	
	SELECT 
	1,userid,account,pwd,username,intime,deletetag,1,did
	 FROM [group_user]
	 WHERE account=@account and deletetag >0
	
	
	
	
    

	RETURN 0





GO
