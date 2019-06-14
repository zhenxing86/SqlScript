USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-10-14
-- Description:	�����ö�ȡȨ��
-- Memo:		
*/
ALTER function fn_RoleGet(@OldValue INT, @AddBit INT)
returns bit
begin
	return isnull(@OldValue,0) & Power(2,@AddBit - 1)
end
GO

SELECT dbo.fn_RoleGet(7,2)