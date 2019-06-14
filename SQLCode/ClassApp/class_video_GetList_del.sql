use ClassApp
go
/*      
-- Author:      xie  
-- Create date: 2013-12-20     
-- Description:       
-- Memo:        
exec class_video_GetList_del 12511,1,10,'','','2013-12-19 10:00:00','2013-12-19 23:59:59'      
*/      
create PROCEDURE [dbo].class_video_GetList_del      
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
 'class_video cv
   inner join basicdata..class c on cv.classid=c.cid
    where cv.kid = @D1 and
    cv.status=0 and
     cv.uploaddatetime>=@T1 and cv.uploaddatetime<=@T2'    
    
  IF @title <> '' SET @fromstring = @fromstring + ' AND cv.[title] like @S1 + ''%'''  
  IF @cname <> '' SET @fromstring = @fromstring + ' AND c.cname like @S2 + ''%'''   
           
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring = @fromstring,      --���ݼ�      
  @selectstring =       
  ' cv.videoid,c.cname,cv.author,cv.filename,cv.filepath,cv.uploaddatetime',      --��ѯ�ֶ�      
  @returnstring =       
  ' videoid,cname,author,filename,filepath,uploaddatetime',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' cv.[classid] ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,   
  @S1 = @title, 
  @S2 = @cname,  
  @T1 = @bgndate,
  @T2 = @enddate    
end 