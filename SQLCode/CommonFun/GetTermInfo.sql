use CommonFun
go
/*------------------------------------    
-- Author:      xie    
-- Create date: 2014-07-02     
-- Description: ����ʱ���kid��ȡѧ����Ϣ    
-- Paradef:      
  @term ��ǰѧ��,�����µ�ѧ�ڣ�����׶�԰�ֶ�����ѧ�ڣ�Ҳȡ��ѧ�ں��ѧ�ڣ�    
  @cansetterm��0:������ѧ�ڣ�1��--Ҫ��ѧ�ڣ�����û����ѧ�ڡ�2��Ҫ��ѧ�ڣ������Ѿ���ѧ�ڡ�    
  @haschgclassterm �Ƿ��Ѿ����а༶��ѧ�ڶ����ˡ�  
  @riseclass riseclass ��ǰѧ���Ƿ�Ҫ����  0������Ҫ��1��Ҫ���ࣨ9��1�ţ�     
-- Memo:      
 declare @t_date datetime,@date datetime='2014-09-30 10:00:00',@ret int=0,@term_s nvarchar(10)=''    
 select @term_s = dbo.getCurrentTerm(17709,@date)      
 select @term_s    
     
 set @date='2014-07-31 10:00:00'    
 set @ret =0    
 select dbo.getCurrentTerm(17709,@date)      
    
declare @t_date datetime,@date datetime='2014-06-30 10:00:00',@ret int=0    
 exec @ret=CanSetCurTerm 17709,@date    
 select @ret    
     
 set @t_date = Month(dateadd(MONTH,2,@date))    
 select 1 from BasicData.dbo.kid_term       
   where bgndate <= @t_date    
    and enddate >= @t_date    
    and kid = 17709     
        
[GetTermInfo] 24010,'2014-08-22'    
    
select* from basicdata..class_all where kid=12511 and term='2014-1'    
------------------------------------*/    
alter PROCEDURE [dbo].[GetTermInfo]    
@kid int    
,@date datetime    
 AS     
    
begin     
    
 DECLARE @riseclass int,@term nvarchar(10),@nextterm nvarchar(10),@cansetterm int =0,@haschgclassterm int =0    
 ,@totlecnt int =0,@norisecnt int =0    
   
 select @cansetterm=dbo.fn_CanSetCurTerm(@kid,@date)    
        
 if(@cansetterm in (0,1))  --@cansetterm 0:������ѧ�ڣ�1��--Ҫ��ѧ�ڣ�����û����ѧ�ڡ�2��Ҫ��ѧ�ڣ������Ѿ���ѧ�ڡ�    
 begin    
   select @term = dbo.fn_getCurrentTerm(@kid,@date,0)     
 end    
 else if(@cansetterm =2)    
 begin    
  select @term = dbo.fn_getCurrentTerm(@kid,@date,1)     
 end    
 select @nextterm = dbo.fn_getCurrentTerm(@kid,dateadd(MM,2,@date),0)     
 set @riseclass = case when Right(@nextterm,1)='1' then 1 else 0 end   
        
 select @norisecnt = sum(case when ca.cid is null then 1 else 0 end)     
  from BasicData..class c    
   left join BasicData..class_all ca     
    on c.cid=ca.cid and ca.term = @nextterm and ca.deletetag=1   
  where c.kid=@kid and ca.term=@nextterm     
   and c.deletetag=1    
     
 if(@norisecnt=0)    
  set @haschgclassterm = 1    
     
 select @term term,@cansetterm cansetterm,@haschgclassterm haschgclassterm,@riseclass riseclass    
         
    
     
end    
  