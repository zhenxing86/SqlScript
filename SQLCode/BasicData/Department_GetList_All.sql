use BasicData 
go
/*    
-- Author:      xie    
-- Create date: 2013-12-18  
-- Description:  ����kid��ȡ�����б�
-- Memo:      
exec Department_GetList_All 12511,1,10,'','2013-8-17 00:00:00','2013-12-18 23:59:59'  
*/    
  
alter PROCEDURE [dbo].Department_GetList_All      
@kid int, 
@page int,
@size int,        
@dname nvarchar(20),
@bgndate datetime,
@enddate datetime
 AS       
begin      
 DECLARE @fromstring NVARCHAR(2000)   
 
 SET @fromstring =       
 'department d   
   where d.kid = @D1 and  
   d.actiondatetime>=@T1 and d.actiondatetime<=@T2 '    
    
  IF @dname <> '' SET @fromstring = @fromstring + ' AND d.dname like @S1 + ''%'''
                   
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' d.did,d.dname,d.actiondatetime,deletetag ',      --��ѯ�ֶ�      
  @returnstring =       
  ' did,dname,actiondatetime,deletetag',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' d.deletetag',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,   
  @S1 = @dname, 
  @T1 = @bgndate,
  @T2 = @enddate    
end 