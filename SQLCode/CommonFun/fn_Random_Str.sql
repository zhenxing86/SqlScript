USE CommonFun
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_Random_Str]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_Random_Str]
GO
USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      Master̷  
-- Create date: 2013-08-19  
-- Description: ���������ȡһ����Χ�ڵ�����  
-- Memo:    
SELECT dbo.fn_Random_Str('�й�,�ձ�,����,Ӣ��',newid())
*/
CREATE FUNCTION [dbo].[fn_Random_Str](@s varchar(2000),@rand varchar(100))
returns varchar(100)
as
begin
	declare @result varchar(100),@pos int, @maxpos int
	declare @t table(pos int, col varchar(100))
	insert into @t
	select *  from CommonFun.dbo.f_split(@s,',') 
	set @maxpos = @@ROWCOUNT
	select @result = col from @t where pos = 1+abs(checksum(@rand))%(@maxpos) 
	return @result
end
GO


