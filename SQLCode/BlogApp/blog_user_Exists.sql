USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_user_Exists]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：用户名重复检查 
--项目名称：zgyeyblog
--说明：>0重复,=0不重复
--时间：2008-09-28 07:16:29
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[blog_user_Exists]
@account nvarchar(30),
@rtn int output
AS
	DECLARE @TempID int
	declare @exitaccount int

	SELECT @TempID = count(1) FROM blog_user WHERE account=@account and activity=1

	--SELECT  
		--@exitaccount = count(1)
		-- FROM 
			--[basicdata]..[user]
		-- WHERE 
			--account=@account
	
	--IF (@exitaccount > 0)
	--begin		
	--	set @TempID = @exitaccount	--帐号重复
	--end
	
	set @rtn = @TempID
	IF @TempID = 0
		RETURN @rtn
	ELSE
		RETURN @rtn








GO
