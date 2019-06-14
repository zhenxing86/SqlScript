--����Լ��
SELECT
  tab.name AS [����],
  idx.name AS [��������],
  col.name AS [��������]
FROM
  sys.indexes idx
    JOIN sys.index_columns idxCol 
      ON (idx.object_id = idxCol.object_id 
          AND idx.index_id = idxCol.index_id 
          AND idx.is_primary_key = 1)
    JOIN sys.tables tab
      ON (idx.object_id = tab.object_id)
    JOIN sys.columns col
      ON (idx.object_id = col.object_id
          AND idxCol.column_id = col.column_id)
      where tab.name='stu_mc_day'

--ΨһԼ��
SELECT
  tab.name AS [����],
  idx.name AS [Լ������],
  col.name AS [Լ������]
FROM
  sys.indexes idx
    JOIN sys.index_columns idxCol 
      ON (idx.object_id = idxCol.object_id 
          AND idx.index_id = idxCol.index_id 
          AND idx.is_unique_constraint = 1)
    JOIN sys.tables tab
      ON (idx.object_id = tab.object_id)
    JOIN sys.columns col
      ON (idx.object_id = col.object_id
          AND idxCol.column_id = col.column_id)
    where tab.name='stu_mc_day'

--���Լ��
select 
  oSub.name  AS  [�ӱ�����],
  fk.name AS  [�������],
  SubCol.name AS [�ӱ�����],
  oMain.name  AS  [��������],
  MainCol.name AS [��������]
from 
  sys.foreign_keys fk  
    JOIN sys.all_objects oSub  
        ON (fk.parent_object_id = oSub.object_id)
    JOIN sys.all_objects oMain 
        ON (fk.referenced_object_id = oMain.object_id)
    JOIN sys.foreign_key_columns fkCols 
        ON (fk.object_id = fkCols.constraint_object_id)
    JOIN sys.columns SubCol 
        ON (oSub.object_id = SubCol.object_id  
            AND fkCols.parent_column_id = SubCol.column_id)
    JOIN sys.columns MainCol 
        ON (oMain.object_id = MainCol.object_id  
            AND fkCols.referenced_column_id = MainCol.column_id)
   where oMain.name='stu_mc_day'

--CheckԼ��
SELECT
  tab.name AS [����],
  chk.name AS [CheckԼ����],
  col.name AS [����],
  chk.definition
FROM
  sys.check_constraints chk
    JOIN sys.tables tab
      ON (chk.parent_object_id = tab.object_id)
    JOIN sys.columns col
      ON (chk.parent_object_id = col.object_id
          AND chk.parent_column_id = col.column_id)
 where tab.name='stu_mc_day'

--��ȡ��������Ĵ�����
select 
   b.name as ����,a.name  as ������ 
   from sysobjects  as a 
    inner join sysobjects as b on b.id = a.parent_obj
   where a.xtype='TR'
   --and b.name='stu_mc_day'
order by b.name

��ע��
 xtype   char(2)   �������͡����������ж��������е�һ�֣�     
  C   =   CHECK   Լ��   
  D   =   Ĭ��ֵ��   DEFAULT   Լ��   
  F   =   FOREIGN   KEY   Լ��   
  L   =   ��־   
  FN   =   ��������   
  IF   =   ��Ƕ����   
  P   =   �洢����   
  PK   =   PRIMARY   KEY   Լ����������   K��   
  RF   =   ����ɸѡ�洢����   
  S   =   ϵͳ��   
  TF   =   ����   
  TR   =   ������   
  U   =   �û���   
  UQ   =   UNIQUE   Լ����������   K��   
  V   =   ��ͼ   
  X   =   ��չ�洢����  


-- �޸ı��ֶγ���
--alter table <����> alter column <�ֶ���> ��������(����)

use BasicData
alter table verify_sms alter column account nvarchar(50)
alter table verify_sms alter column verify_code nvarchar(500)
alter table and_notice_batch alter column smscontent varchar(4000)

alter table [device_version] drop column kid

-- ��������ѭ������Ϊ����
select CONVERT(VARCHAR(10),dateadd(dd,n,getdate()),120) 
from BasicData..nums1Q
WHERE N <= DATEDIFF(DD,'2013-06-21','2013-06-25')


alter table [device_version] add publish_type int
alter table [device_version] drop column kid


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�汾���ͣ�-1 �����棬0�����԰棬1���ȶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'device_version', @level2type=N'COLUMN',@level2name=N'publish_type'
GO

ALTER TABLE [dbo].[kindergarten] ADD  CONSTRAINT [DF__kin__hx_sendtime]  DEFAULT ((0)) FOR [hx_sendtime]

alter table T_ping drop constraint DF_T_ping_p_c  
alter table T_ping add constraint DF_T_ping_p_c DEFAULT ((2)) for p_c 

select b.text as 'Ĭ��ֵ�ֶ��� �������',*  
from syscolumns a left join syscomments b on a.cdefault=b.id   
where a.id=object_id('kindergarten') and a.name='hx_sendtime' 


EXEC sp_helptext 'user_delete_ly'
EXEC sp_helpindex 'kindergarten'

FK_department_kindergarten  kindergarten.kid=department.kid ����ɾ�� ��������


select a.name as Լ����,
object_name(b.parent_object_id) as �����,
d.name as �����,
object_name(b.referenced_object_id) as ������,
c.name as ������
from sys.foreign_keys A
inner join sys.foreign_key_columns B on A.object_id=b.constraint_object_id
inner join sys.columns C on B.parent_object_id=C.object_id and B.parent_column_id=C.column_id
inner join sys.columns D on B.referenced_object_id=d.object_id and B.referenced_column_id=D.column_id
where object_name(B.referenced_object_id)='kindergarten'  --����


--CheckԼ��
SELECT
  tab.name AS [����],
  chk.name AS [CheckԼ����],
  col.name AS [����],
  chk.definition
FROM
  sys.check_constraints chk
    JOIN sys.tables tab
      ON (chk.parent_object_id = tab.object_id)
    JOIN sys.columns col
      ON (chk.parent_object_id = col.object_id
          AND chk.parent_column_id = col.column_id)
          