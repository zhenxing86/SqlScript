use mcapp
go

/*  
author: xie  
altertime: 2014-09-16 17:40  
des: ����������д�뵽���ݿ�󣬽���¼�޸�Ϊ�Ѵ�����������д��ʧ�ܣ����Ϊʧ�ܡ���  
  
demo��  
*/  
create proc mc_log_file_record_UpdateListBJ        
@idlst varchar(max)       
,@startdate datetime        
,@enddate datetime        
as        
      
CREATE TABLE #ID(col int)     
  
INSERT INTO #ID        
 select distinct col  --�������ַ���ת��Ϊ�б�        
 from BasicData.dbo.f_split(@idlst,',')        
        
update r        
 set ftype=2,startdate=@startdate,enddate=@enddate      
 from mc_log_file_recordBJ r      
  inner join #ID i       
   on r.id = i.col      
      
drop table #ID    
      
 if @@ERROR<>0        
 return -1        
 else         
 return 1   
 
 go