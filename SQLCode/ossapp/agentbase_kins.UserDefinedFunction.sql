USE [ossapp]
GO
/****** Object:  UserDefinedFunction [dbo].[agentbase_kins]    Script Date: 05/14/2013 14:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[agentbase_kins]
(
	@abid int
)
RETURNS int
AS
BEGIN
	
	DECLARE @str int
	set @str=0
	

	SELECT @str=count(1) from agentarea ab
	inner join kinbaseinfo k on ab.ID=k.abid
	where gid=@abid and ab.deletetag=1


	RETURN @str

END
GO
