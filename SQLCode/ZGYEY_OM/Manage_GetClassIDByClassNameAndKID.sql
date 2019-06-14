USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Manage_GetClassIDByClassNameAndKID]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--用途:按班级名和幼儿园ID取班级ID
--说明：
------------------------------------
CREATE PROCEDURE [dbo].[Manage_GetClassIDByClassNameAndKID]   
@classname nvarchar(20),
@kid int
AS
	declare @cid int
	SELECT @cid=t1.cid FROM BasicData.dbo.class t1 
	WHERE cname=@classname and deletetag=1 and kid=@kid 
	if(@cid is null)
	begin
		set @cid=0
	end
	select @cid


GO
