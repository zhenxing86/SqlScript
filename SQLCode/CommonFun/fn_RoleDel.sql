USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-10-14
-- Description:	��������ɾ��λȨ��
-- Memo:		
*/
ALTER function fn_RoleDel(@OldValue INT, @AddBit INT)
returns int
begin
	return  @OldValue & (2147483647^Power(2,@AddBit - 1))
end
GO

