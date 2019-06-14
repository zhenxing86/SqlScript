use ClassApp
go
/*      
-- Author:      xie  
-- Create date: 2013-12-20     
-- Description:       
-- Memo:        
exec class_schedule_GetList_del 12511,1,10,'','','2013-12-19 10:00:00','2013-12-19 23:59:59'      
*/      
create PROCEDURE [dbo].class_schedule_GetList_del      
@kid int, 
@page int,
@size int, 
@cname nvarchar(20),
@title nvarchar(20), 
@bgndate datetime,  
@enddate datetime    
 AS       
begin      
 DECLARE @fromstring NVARCHAR(2000)   
 
 
 SET @fromstring =       
 'class_schedule cs
   inner join basicdata..class c on cs.classid=c.cid
    where cs.kid = @D1 and
    cs.status=0 and
    cs.createdatetime>=@T1 and cs.createdatetime<=@T2 '    
    
  IF @title <> '' SET @fromstring = @fromstring + ' AND cs.[title] like @S1 + ''%'''  
  IF @cname <> '' SET @fromstring = @fromstring + ' AND c.cname like @S2 + ''%'''   
                   
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' cs.scheduleid,cs.title,cs.author,c.cname,cs.createdatetime',      --��ѯ�ֶ�      
  @returnstring =       
  ' scheduleid,title,author,cname,createdatetime',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' cs.[classid] ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,  
  @S1 = @title, 
  @S2 = @cname,  
  @T1 = @bgndate,
  @T2 = @enddate    
end 