use ClassApp
go
/*      
-- Author:      xie  
-- Create date: 2013-12-20     
-- Description:       
-- Memo:        
exec class_album_GetList 12511,1,10,'','','2013-12-19 10:00:00','2013-12-19 23:59:59'      
*/      
alter PROCEDURE [dbo].class_album_GetList      
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
 'class_album ca
   inner join basicdata..class c on ca.classid=c.cid
    where ca.kid = @D1 and
     ca.lastuploadtime>=@T1 and ca.lastuploadtime<=@T2 '    
    
  IF @title <> '' SET @fromstring = @fromstring + ' AND ca.[title] like @S1 + ''%'''         
  IF @cname <> '' SET @fromstring = @fromstring + ' AND c.cname like @S2 + ''%'''                  
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' ca.albumid,ca.title,ca.photocount,ca.author,ca.createdatetime,ca.lastuploadtime,ca.[status],c.cname,ca.classid,ca.kid',      --��ѯ�ֶ�      
  @returnstring =       
  ' albumid,title,photocount,author,createdatetime,lastuploadtime,[status],cname,classid,kid',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' [status],ca.[classid] ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,  
  @S1 = @title, 
  @S2 = @cname,  
  @T1 = @bgndate,
  @T2 = @enddate    
end 