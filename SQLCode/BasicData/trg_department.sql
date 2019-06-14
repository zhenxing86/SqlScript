USE [BasicData]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 
-- Description:	
-- Memo:		
*/
ALTER TRIGGER trg_department ON [dbo].[department]                            
  for INSERT, UPDATE                       
AS
BEGIN           
	if @@RowCount <= 0 Return                
	set nocount on  
	
	declare @DelCnt int, @InsCnt int
	DECLARE @DoUserID int, @DoProc varchar(50)  --��ȡ��������Ϣ
	EXEC commonfun.dbo.GetDoInfo @DoUserID OUTPUT, @DoProc OUTPUT
	
	SELECT @DelCnt = COUNT(1) FROM deleted
	SELECT @InsCnt = COUNT(1) FROM inserted
	IF @DelCnt > 0 and @InsCnt > 0
	BEGIN 
	--�����޸���־ 	

		if UPDATE([dname])
		BEGIN
			INSERT INTO AppLogs.dbo.EditLog(TbName,KeyCol, DoType, ColName, OldValue, NewValue, DoWhere, DoUserID)
			SELECT 'department',i.[did], 1, 'dname', d.[dname], i.[dname], @DoProc, @DoUserID
				from inserted i inner join deleted d on i.[did] = d.[did]
					AND ISNULL(i.[dname],0) <> ISNULL(d.[dname],0)
		END

		if UPDATE([deletetag])
		BEGIN
			INSERT INTO AppLogs.dbo.EditLog(TbName,KeyCol, DoType, ColName, OldValue, NewValue, DoWhere, DoUserID)
			SELECT 'department',i.[did], 1, 'deletetag', d.[deletetag], i.[deletetag], @DoProc, @DoUserID
				from inserted i inner join deleted d on i.[did] = d.[did]
					AND ISNULL(i.[deletetag],0) <> ISNULL(d.[deletetag],0)
		END
	END 
	ELSE IF @DelCnt = 0 and @InsCnt > 0	
	--����������־   
	BEGIN
		INSERT INTO AppLogs.dbo.EditLog(TbName,KeyCol, DoType, ColName, NewValue, DoWhere, DoUserID)
		SELECT 'department', [did], 0, 'did', [did], @DoProc, @DoUserID
			from inserted 
	END
END
GO

