use ClassApp 
go
/*  
-- Author:      xie  
-- Create date: 2013-12-20  
-- Description:  �༶���ָ� 
-- Memo:   
 [class_album_rollback] 239, '1006,1039'
   
*/  

alter PROCEDURE [dbo].[class_album_rollback]  
 @kid int,  
 @str varchar(8000)
as    
BEGIN   
 SET NOCOUNT ON  
 
  CREATE TABLE #AlbumID(col nvarchar(40))  
  INSERT INTO #AlbumID  
    select distinct col  --�������ַ���ת��Ϊ�б�  
    from BasicData.dbo.f_split(@str,',')  
  
	 update ca set [status]=1
	   FROM [class_album] ca
	   inner join #AlbumID ui   
		on ca.albumid = ui.col   
		and ca.[status]<=0
	 
	 if @@ERROR<>0
	 return -1
	 else 
	 return 1 
  
END  