USE NGBApp
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-08-23
-- Description:	CardSet ֻ�����޸�cgid�У��������޸������У��Ҳ�����������ɾ��
-- Memo:		
*/
ALTER TRIGGER [dbo].CardSet_Constraint ON [dbo].CardSet                           
  for INSERT, UPDATE, DELETE                           
AS
BEGIN           
	if @@RowCount <= 0 Return
	set nocount on
	IF NOT EXISTS(SELECT * FROM inserted)
	BEGIN
		raiserror('������ɾ������',11,1)
		ROLLBACK
		RETURN
	END
	IF NOT EXISTS(SELECT * FROM deleted)
	BEGIN
		raiserror('��������������',11,1)
		ROLLBACK
		RETURN
	END

	if columns_updated()^4 > 0
	BEGIN
		raiserror('��������³�cgid��֮���������',11,1)
		ROLLBACK
		RETURN
	END    
END
GO