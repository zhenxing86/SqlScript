use BasicData 
go
/*    
-- Author:      xie    
-- Create date: 2013-12-18  
-- Description:  ����kid��ȡ�༶�б����༶��У��������԰����   
-- Memo:      
exec leave_teacher_GetList 12511,1,10,'','2013-8-17 00:00:00','2013-12-18 23:59:59'  
*/    
  
create PROCEDURE [dbo].leave_teacher_GetList      
@kid int, 
@page int,
@size int,        
@username nvarchar(20),  
@bgndate datetime,  
@enddate datetime  
 AS       
begin      
 DECLARE @fromstring NVARCHAR(2000)   
 
 SET @fromstring =       
 'user_kindergarten_history l   
    inner join BasicData..[User] u on u.userid=l.userid  
   where l.kid = @D1 and  
   l.actiondatetime>=@T1 and l.actiondatetime<=@T2 '    
    
  IF @username <> '' SET @fromstring = @fromstring + ' AND u.name like @S1 + ''%'''
                   
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' l.userid,u.name,u.mobile,l.actiondatetime  ',      --��ѯ�ֶ�      
  @returnstring =       
  ' userid,name,mobile,actiondatetime',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' u.name ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,   
  @S1 = @username, 
  @T1 = @bgndate,
  @T2 = @enddate    
end 