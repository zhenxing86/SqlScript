use mcapp
go
/*          
-- Author:      xie       
-- Create date: 2014-12-03         
-- Description: �ж��Ƿ���Ը��׶�԰������Щ����        
-- Memo:           
 declare @ret int = 0 
 exec @ret = cardinfo_CanNewCard '1603001616','1603001617'       
 select @ret
*/       
create PROCEDURE [dbo].cardinfo_CanNewCard        
 @start_card bigint,      
 @end_card bigint
as            
BEGIN           
 SET NOCOUNT ON           
 declare @ret int=0        
 if len(@start_card) <> LEN(@end_card)      
 begin      
  --raiserror('��ֹ����λ����һ��',11,1)      
  return -1      
 end      
 if @start_card/1000000 <> @end_card/1000000      
 begin      
  --raiserror('ֻ�ܴ������λ��ǰ���������Ҫ��ͬ',11,1)      
  return -2      
 end      
 
 declare @cnt int=0
     
 --insert into cardinfo(kid,card,cardtype)    
  select CAST(@start_card/1000000 as varchar(10))+ CommonFun.dbo.padleft(CAST(n as varchar(10)),6,'0') cardno 
   into #newcard    
   from CommonFun.dbo.nums       
   where N >= @start_card%1000000       
    AND N <= @end_card%1000000      
   
  select @cnt = COUNT(1) 
   from cardinfo c
    inner join #newcard n
     on c.card=n.cardno
     
  return @cnt
          
END 