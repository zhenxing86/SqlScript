USE basicdata
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-08-28
-- Description:	���������ڼ�¼��ɾ����user
-- Memo:	
*/
ALTER TRIGGER [dbo].[Del_User] ON [dbo].[user]                           
  for DELETE                           
AS
BEGIN           
	if @@RowCount <= 0 Return                    
  raiserror('������ɾ������',11,1)
	ROLLBACK
END