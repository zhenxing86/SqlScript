USE SMS
CREATE TABLE test(D DATETIME DEFAULT GETDATE(), MEMO VARCHAR(10))
go
insert into test(memo) select '���Կ�ʼ'
insert into test(memo) select 'ȫ����'
/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:53:05.080 ���Կ�ʼ
2013-06-29 17:53:05.083 ȫ����
*/
USE BackupApp
exec BackupFull

USE SMS
insert into test(memo) select '���챸��'
/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
2013-06-29 17:54:33.277 ���챸��
*/
USE BackupApp
exec BackupDIFF

USE SMS
insert into test(memo) select '���챸�ݺ�'
/*
USE SMS
select * from test
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
2013-06-29 17:54:33.277 ���챸��
2013-06-29 17:55:25.800 ���챸�ݺ�  
*/
--��ԭ����������
USE BackupApp
exec RestoreDB 'SMS',
'E:\backup\FULL\SMS\SMS_Full_2013_07_01 09_27_24.bak'
/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
*/
--��ԭ�����챸��
USE BackupApp
exec RestoreDB 'SMS',
'E:\backup\FULL\SMS\SMS_Full_2013_07_01 09_27_24.bak', 
'E:\backup\DIFF\SMS\SMS_DIFF_2013_07_01 09_28_50.bak'
/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
2013-06-29 17:54:33.277 ���챸��
*/
--��ԭ������LOG����ǰ�İ汾
USE BackupApp
exec RestoreDB 'SMS',
'E:\backup\FULL\SMS\SMS_Full_2013_07_01 09_27_24.bak', 
null,'E:\backup\logbackup\SMS_LOG_2013_07_01 09_29_08.bak',
'2013-07-01 09:29:07'

/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
2013-06-29 17:54:33.277 ���챸��
2013-06-29 17:55:25.800 ���챸�ݺ�
*/
--��ԭ����ʱ��ǰ������ʱ��汾
USE SMS
insert into test(memo) select '��ϯ��ԭǰ'
WAITFOR DELAY '00:00:05'
insert into test(memo) select '��ϯ��ԭ��'

USE BackupApp
exec RestoreDB 'SMS',
'E:\backup\FULL\SMS\SMS_Full_2013_07_01 09_27_24.bak', 
null,null,
'2013-07-01 09:40:01.963'

/*
USE SMS
select * from test	
D                       MEMO
----------------------- ----------
2013-06-29 17:54:08.140 ���Կ�ʼ
2013-06-29 17:54:08.140 ȫ����
2013-07-01 09:39:57.943 ��ϯ��ԭǰ
*/

