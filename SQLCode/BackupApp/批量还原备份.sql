USE master
GO
-- �������ø߼�ѡ�� 
EXEC sp_configure 'show advanced options', 1
GO 
-- �������� 
RECONFIGURE 
GO 
-- ����xp_cmdshell 
EXEC sp_configure 'xp_cmdshell', 1 
GO 
--�������� 
RECONFIGURE 
GO
EXEC sp_restoredatabase2
    'E:\backup\F', --
    'F:\MSSQL\Data', --
    'G:\MSSQL\Logs'
go
EXEC sp_restoredatabase2
    'E:\backup\G', --
    'G:\MSSQL\Data', --
    'G:\MSSQL\Logs'
go
EXEC sp_configure 'show advanced options', 1
GO 
-- �������� 
RECONFIGURE 
GO 
-- �ر�xp_cmdshell 
EXEC sp_configure 'xp_cmdshell', 0