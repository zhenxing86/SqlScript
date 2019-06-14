--��������/��־�����ϴ�

/*

select * from mcapp..mc_log_file_record where crtdate>='2014-11-21 14:00' and ftype<2 and totalCnt>0
select COUNT(*) from mcapp..mc_log_file_record where crtdate<='2014-11-21 8:00' and ftype<2 and totalCnt>0

*/

use mcapp
go
/*  
author: xie  
altertime: 2014-09-16 17:40  
des: ����������־��¼  
demo��  

*/  
alter proc mc_log_file_record_Add   
@kid int  
,@devid nvarchar(50)  
,@filepath nvarchar(100)  
,@filename nvarchar(100)  
,@totalcnt int  
,@crtdate datetime=null
,@net int=0   
as  
  
insert into mc_log_file_record(kid,devid,filepath,[filename],totalcnt,crtdate,net)      
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
des: ��ȡ������ĳ�����־��¼    
    
demo��   
mc_log_file_record_GetListV2 '2014-11-17 11:55:40',21   
*/    
  
alter proc mc_log_file_record_GetListV2   
@lastdate datetime    
,@net int = 0     
as    
	update r
	 set r.ftype = 1    
	 output Deleted.id,Deleted.kid,Deleted.devid,Deleted.filepath,Deleted.[filename]  
	from ( select top (100) * from mc_log_file_record where ftype=0 and totalcnt>0 and net=@net and crtdate<=@lastdate   
	order by crtdate desc ) r 

go


use mcapp
go
/*
author: xie
altertime: 2014-09-16 17:40
des: ����������д�뵽���ݿ�󣬽���¼�޸�Ϊ�Ѵ�����������д��ʧ�ܣ����Ϊʧ�ܡ���

demo��
*/
create proc mc_log_file_record_UpdateList      
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
 from mc_log_file_record r    
  inner join #ID i     
   on r.id = i.col    
    
drop table #ID  
    
 if @@ERROR<>0      
 return -1      
 else       
 return 1  
go

 
 USE [SqlAgentDB]
GO
/****** Object:  StoredProcedure [dbo].[Move_loginfo_From_Temp]    Script Date: 10/24/2014 10:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ת��loginfo_temp to [loginfo] �������
create Procedure [dbo].[Move_loginfo_From_Temp]
as
Set Nocount On

Delete [mcapp].[dbo].[loginfo_Temp]
  Output Deleted.devid,Deleted.gunid,Deleted.logtype,Deleted.logmsg,Deleted.result,Deleted.logtime,Deleted.uploadtime,Deleted.kid,Deleted.ftype
  Into [mcapp].[dbo].[loginfo]( devid,gunid,logtype,logmsg,result,logtime,uploadtime,kid,ftype)  
  
  
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
 
 /*      
author: xie      
altertime: 2014-09-16 17:40      
des: ��ȡ������ĳ�����־��¼      
      
demo��     
mc_log_file_record_GetListV2 '2014-11-17 11:55:40',21     
*/      
    
CREATE proc mc_log_file_record_GetListV2BJ     
@lastdate datetime      
,@net int = 0       
as      
 update r  
  set r.ftype = 1      
  output Deleted.id,Deleted.kid,Deleted.devid,Deleted.filepath,Deleted.[filename]    
 from ( select top (100) * from mc_log_file_recordBJ where ftype=0 and totalcnt>0 and net=@net and crtdate<=@lastdate     
 order by crtdate desc ) r   
   