use edu_jy

GO


alter PROCEDURE [dbo].[sms_message_yx_upGetList]
 @page int
,@size int
,@userid int
,@title varchar(100)
,@begintime varchar(100)='1900-1-1'
,@endtime varchar(100)='2900-1-1'
 AS 
begin  
 DECLARE @fromstring NVARCHAR(2000)  
 SET @fromstring =   
 'SMS..[sms_message_yx_up] s     
 where s.code=@D1 and s.replytime between '''+@begintime+''' and '''+@endtime+''' '  
  IF @title <> '' SET @fromstring = @fromstring + ' AND s.[content] like @D2 + ''%'''     
            
           
 --��ҳ��ѯ  
 exec sp_MutiGridViewByPager  
  @fromstring = @fromstring,      --���ݼ�  
  @selectstring =   
  ' s.smsid,s.fromtel,s.content,s.status,s.replytime,s.intime',      --��ѯ�ֶ�  
  @returnstring =   
  ' smsid,fromtel,content,status,replytime,intime',      --�����ֶ�  
  @pageSize = @Size,                 --ÿҳ��¼��  
  @pageNo = @page,                     --��ǰҳ  
  @orderString = ' intime desc ',          --��������  
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����  
  @IsRowNo = 0,           --�Ƿ�����к�  
  @D1 = @userid,  
  @D2 = @title
end  

GO
[sms_message_yx_upGetList] 1,10,36,'','1900-1-1','2900-1-1'