use healthapp
go 
/*  
  
-- Author:  xie       
-- Create date: 2014-08-29        
-- Description: ��ȡ����������Ȩ��  
  
healthapp  
demo:  
*/  
  
alter proc hc_Get_VipStatus  
@userid int  
  
as  
begin  
 select case when a.ftime<=GETDATE() And a.ltime>=GETDATE() then a.a9 else 0 end a9   
 from ossapp..addservice a where a.deletetag=1 and a.[uid]=@userid and a.describe='��ͨ' -- and a.vippaystate=1  �� 
end