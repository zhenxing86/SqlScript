USE BasicData
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- =============================================
-- Author:		Master̷
-- Create date: 2014-02-20
-- Description:	���������ж��û�Ȩ��
-- Memo:	2014-02-20 ����
select dbo.fn_CheckUserRight(288556,0)
select dbo.fn_CheckUserRight(288556,1)
select dbo.fn_CheckUserRight(288556,97)
select dbo.fn_CheckUserRight(288556,98)
*/
ALTER FUNCTION dbo.fn_CheckUserRight
	(@userid int, @usertype int)
RETURNS bit
AS
BEGIN
	DECLARE @Result bit = 0	
	IF EXISTS(
	select *
	 from KWebCMS..site_user su  
		inner join KWebCMS_Right.dbo.sac_user u on u.user_id = su.UID  
		inner join KWebCMS_Right.dbo.sac_user_role r on r.user_id = u.user_id  
		inner join KWebCMS_Right.dbo.sac_role l on l.role_id=r.role_id  
	 where su.appuserid = @userid 
		AND (
				(l.role_name = '����Ա' and @usertype = 98)
		OR	(l.role_name in ('����Ա','԰��') and @usertype = 97)
		OR	(l.role_name in ('��ʦ','ҽ��') and @usertype = 1)
		)
	)
	BEGIN
		SET @Result = 1
	END
	ELSE IF @usertype = 0 AND EXISTS(
	select * from BasicData..[user] where userid = @userid AND usertype = 0
	)
	BEGIN
		SET @Result = 1
	END

	RETURN @Result

END
GO

