use ClassApp
go
/*  
-- Author:      xie  
-- Create date: 2014-12-04
-- Description: �޸�����µ�������Ƭ��ҳ��̬��ʾѡ��  
--[class_photos_UpdateIsFlashShow_V3] 7391293,0  
-- Memo:  

*/  
create PROCEDURE  [dbo].[class_photos_UpdateIsFlashShow_V3]  
 @albumid int,  
 @isflashshow int  
AS  
BEGIN  
 SET NOCOUNT ON  
 UPDATE class_photos   
  SET isfalshshow = CASE WHEN @isflashshow = 0 THEN 1 ELSE 0 END  
  WHERE albumid = @albumid   
  
END  