use CommonFun
go
/*  
-- Author:      Master̷  
-- Create date: 2013-05-13  
-- Description: ������������������ʽ�ж� �ַ����Ƿ�Ϊ�ֻ�����  
*/  
ALTER function fn_cellphone(@s Nvarchar(400))  
returns bit  
as  
begin  
return commonfun.dbo.fn_RegExMatch  
 (@s, N'^(0|\+86)?(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$')  
  
end   