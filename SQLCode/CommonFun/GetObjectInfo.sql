use CommonFun
go
/*      
--��ǰ���ݿ�����ݱ������ֵ�  
̷�� 2014-01-16 ����     
*/  
ALTER Procedure [dbo].[GetObjectInfo]
AS        
BEGIN        
	Set NoCount On  
	 	DECLARE @SQL NVARCHAR(4000), @PreTid int;
	 	SET @PreTid = OBJECT_ID('tempdb..#T')
	 	IF @PreTid IS NULL 
	  CREATE  TABLE #T(DBName nvarchar(100),Object_id int, Type char(2), Name nvarchar(100), 
	  Descript sql_variant, Abolish sql_variant, UpdateTime datetime) 
	--���²��ֲ������޸Ĳ���#T���ֶ�    
/*================================================================================*/

/*================================================================================*/
	IF @PreTid IS NULL  
	SELECT * FROM #T ORDER BY DBName,type,name

END
GO
go