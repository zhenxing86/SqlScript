USE [ossapp]
GO
/****** Object:  UserDefinedFunction [dbo].[agentbase_waitmoney]    Script Date: 05/14/2013 14:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[agentbase_waitmoney]
(
	@kid int
)
RETURNS int
AS
BEGIN
	
	DECLARE @str int
	set @str=''
	
select @str= datediff(ms,getdate(),dateadd(s,1,convert(varchar,getdate(),120))) 
*(@kid%20)*datediff(ms,getdate(),dateadd(ss,10,convert(varchar,getdate(),120)))/1000 
	
	

	RETURN @str

END
GO
