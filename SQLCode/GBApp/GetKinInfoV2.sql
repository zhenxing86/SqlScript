use gbapp
go
/*
	-- Author:      xie     
	-- Create date: 2014-02-11        
	-- Description: ����kid��term��ȡ�׶�԰��Ϣ ���°�ɳ�����ʹ�ã�        
	-- Memo:use gbapp        
	select * from growthbook where userid=295765        
	[GetKinInfoV2] 79818,'2013-0' 
*/
CREATE PROCEDURE [dbo].[GetKinInfoV2]  
@kid int,
@term nvarchar(10)='2013-0'
 AS    
  
  declare @strTerm nvarchar(10)='��ѧ��'
  set @strTerm = case when substring(@term,charindex('-',@term)+1,len(@term))='1' then '��ѧ��' else '��ѧ��' end
  
  select [kname],@strTerm ,'',kid 
   from BasicData..kindergarten  
   where deletetag =1
	and kid=@kid  