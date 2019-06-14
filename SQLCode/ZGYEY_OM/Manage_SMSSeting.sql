USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Manage_SMSSeting]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途:setsms len right
--说明：[Manage_SMSSeting] 58,1
--select * from blogapp..permissionsetting where ptype=22 and kid=58
------------------------------------
CREATE PROCEDURE [dbo].[Manage_SMSSeting]   
@kid int,
@type int
AS

	if(@type=1)
	begin
		insert into blogapp..permissionsetting (ptype,kid)values(22,@kid)
	end
	else
	begin
		delete blogapp..permissionsetting where ptype=22 and kid=@kid
	end




GO
