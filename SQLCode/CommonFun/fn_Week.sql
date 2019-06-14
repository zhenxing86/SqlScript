USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-10-14
-- Description:	�����÷���ĳ���������ڵ����ָ�ʽ������@@DATEFIRST ��Ӱ�죬�̶�1Ϊ����һ��7Ϊ������
-- Memo:		
*/
ALTER FUNCTION fn_Week(@t datetime)
returns int
as
begin
	return DATEPART(weekday, getdate() + @@DATEFIRST - 1)
end