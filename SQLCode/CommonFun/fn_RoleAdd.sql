USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-10-14
-- Description:	���������Ȩ��
-- Memo:		
*/
ALTER function fn_RoleAdd(@OldValue INT, @AddBit INT)
returns int
begin
	return isnull(@OldValue,0) | Power(2,@AddBit - 1)
end
GO

select dbo.fn_RoleAdd(3,2)