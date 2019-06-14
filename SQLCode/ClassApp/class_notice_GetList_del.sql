use ClassApp
go
/*      
-- Author:      xie  
-- Create date: 2013-12-20     
-- Description:       
-- Memo:        
exec class_notice_GetList_del 12511,1,10,'','','2010-7-1 10:00:00','2013-12-19 23:59:59'      
*/      
alter PROCEDURE [dbo].class_notice_GetList_del      
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
 'class_notice cn
   inner join basicdata..class c on cn.classid=c.cid
    where cn.kid = @D1 and cn.[status]<=0 and
     cn.createdatetime>=@T1 and cn.createdatetime<=@T2 '    
    
  IF @title <> '' SET @fromstring = @fromstring + ' AND cn.[title] like @S1 + ''%'''         
  IF @cname <> '' SET @fromstring = @fromstring + ' AND c.cname like @S2 + ''%'''                  
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' cn.noticeid,cn.title,cn.createdatetime,c.cname,author ',      --��ѯ�ֶ�      
  @returnstring =       
  ' noticeid,title,createdatetime,cname,author ',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' cn.[classid] ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,  
  @S1 = @title, 
  @S2 = @cname,  
  @T1 = @bgndate,
  @T2 = @enddate    
end 

