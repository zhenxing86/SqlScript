

use mcapp
go

/*
author: xie
altertime: 2014-09-16 17:40
des: �����������ϴ����������󣬽���¼�������¼

demo��
*/

alter proc Mc_File_Record_Add    
@kid int      
,@devid nvarchar(50)      
,@filepath nvarchar(100)      
,@filename nvarchar(100)      
,@totalcnt int     
,@crtdate datetime=null
,@net int=0      
as      
      
  if @crtdate is null    
   set @crtdate= GETDATE()    
       
insert into mc_file_record(kid,devid,filepath,[filename],totalcnt,crtdate,net)      
 values(@kid,@devid,@filepath,@filename,@totalcnt,@crtdate,@net)      
       
 if @@ERROR<>0      
 return -1      
 else       
 return 1   
 go
 
 
use mcapp
go   
/*            
author: xie            
altertime: 2014-09-16 17:40            
des: ��ȡ������ĳ������ݼ�¼            
            
demo�� mcapp           
          
select *from mc_file_record where ftype=6          
          
*/      
alter proc mc_file_record_GetListV2    
@lastdate datetime  
,@net int = 0       
as      

--update mc_file_record             
-- set ftype = 1           
-- output Deleted.id,Deleted.kid,Deleted.devid,Deleted.filepath,Deleted.[filename]            
--where ftype=0 and net=@net and crtdate<=@lastdate and totalCnt>0 

update r
	 set r.ftype = 1    
	 output Deleted.id,Deleted.kid,Deleted.devid,Deleted.filepath,Deleted.[filename]   
	from ( select top (100) * from mc_file_record where ftype=0 and totalcnt>0 and net=@net and crtdate<=@lastdate   
	order by crtdate ) r 
	  
go

use mcapp
go
/*
author: xie
altertime: 2014-09-16 17:40
des: ����������д�뵽���ݿ�󣬽���¼�޸�Ϊ�Ѵ�����������д��ʧ�ܣ����Ϊʧ�ܡ���

demo��
*/
alter proc mc_file_record_UpdateList      
@idlst varchar(max)    
,@erridlst varchar(max)    
,@startdate datetime      
,@enddate datetime      
as      
    
CREATE TABLE #ID(col int)     
CREATE TABLE #ID_ERROR(col int)      
    
INSERT INTO #ID      
 select distinct col  --�������ַ���ת��Ϊ�б�      
 from BasicData.dbo.f_split(@idlst,',')      
    
INSERT INTO #ID_ERROR      
 select distinct col     
 from BasicData.dbo.f_split(@erridlst,',')      
        
update r      
 set ftype=2,startdate=@startdate,enddate=@enddate    
 from mc_file_record r    
  inner join #ID i     
   on r.id = i.col    
    
update r      
 set ftype=3,startdate=@startdate,enddate=@enddate     
 from mc_file_record r    
  inner join #ID_ERROR i     
   on r.id = i.col    
    
drop table #ID,#ID_ERROR    
    
 if @@ERROR<>0      
 return -1      
 else       
 return 1      
       
    

