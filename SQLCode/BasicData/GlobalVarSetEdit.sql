USE BasicData
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- =============================================
-- Author:		Master̷
-- Create date: 2014-02-19
-- Description:	�洢������������ȫ�ֱ���
-- Memo:	
exec BasicData..GlobalVarSetEdit 
@Name = @Name,-- '�ƶ�����','��ͨ����','���ź���'
@IntValue = @IntValue, --null Ĭ�� 0���䣬8����
@type = 1  
*/
CREATE PROCEDURE GlobalVarSetEdit
	@Name varchar(50), 
	@StrValue varchar(200) = null, 
	@IntValue int = null,
	@Type int = 2-- 0�޸�StrValue 1�޸�IntValue 2�޸�ȫ��
AS
BEGIN
	SET NOCOUNT ON;
	Begin tran   
	BEGIN TRY  
		IF @Type = 0
		UPDATE GlobalVarSet SET StrValue = @StrValue WHERE Name = @Name
		IF @Type = 1
		UPDATE GlobalVarSet SET IntValue = @IntValue WHERE Name = @Name
		IF @Type = 2
		UPDATE GlobalVarSet SET StrValue = @StrValue, IntValue = @IntValue WHERE Name = @Name
	Commit tran                              
	End Try      
	Begin Catch      
		Rollback tran   
		Return  0      
	end Catch  
	Return 1
   
END
GO
