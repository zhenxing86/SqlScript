USE [ossapp]
GO
/****** Object:  UserDefinedFunction [dbo].[rulesbyrid]    Script Date: 05/14/2013 14:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[rulesbyrid]
(
	@roleid int
)
RETURNS varchar(1000)
AS
BEGIN
	
	DECLARE @str varchar(1000)
	set @str=''
	
	select @str=@str+','+[name] from [rules] where roleid=@roleid

	if(len(@str)>0)
	begin
		set @str=subString(@str,2,len(@str))
	end	
	RETURN @str

END
GO
