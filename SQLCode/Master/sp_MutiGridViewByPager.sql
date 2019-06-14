use master
go
/*  
-- Author:      Master̷  
-- Create date: 2013-08-06  
-- Description: �������ڷ�ҳ��ȡ�κ����ݼ��ļ�¼  
-- Memo:       �ù��̻��Զ���ǳ�ϵͳ��洢���̣�ֻ��master�ⴴ����  
        �κ����ݿⶼ���Ե��ã��Զ�Ĭ��Ϊ�ڵ�ǰ���ݿ����  
*/  
alter PROCEDURE sp_MutiGridViewByPager  
(  
 @fromstring NVARCHAR(max),      --���ݼ�  
 @selectstring NVARCHAR(800),      --��ѯ�ֶ�  
 @returnstring NVARCHAR(800),      --�����ֶ�  
 @pageSize INT = 20,                 --ÿҳ��¼��  
 @pageNo INT =1,                     --��ǰҳ  
 @orderString NVARCHAR(200),          --��������  
 @IsRecordTotal BIT = 0,             --�Ƿ�����ܼ�¼����  
 @IsRowNo BIT = 0,           --�Ƿ�����к�  
 @D1 INT = NULL,  
 @D2 INT = NULL,   
 @D3 INT = NULL,   
 @D4 INT = NULL,  
 @D5 INT = NULL,   
 @D6 INT = NULL,
 @S1 varchar(50) = NULL,  
 @S2 varchar(50) = NULL,  
 @S3 varchar(50) = NULL,  
 @S4 varchar(50) = NULL,  
 @S5 varchar(50) = NULL,  
 @S6 varchar(50) = NULL,   
 @T1 DATETIME = NULL,   
 @T2 DATETIME = NULL,  
 @T3 DATETIME = NULL,   
 @T4 DATETIME = NULL  
)  
AS  
BEGIN  
set nocount on  
    DECLARE @beginRow INT  
    DECLARE @endRow INT  
    DECLARE @recordTotal INT  
    DECLARE @tempLimit NVARCHAR(1000)  
    DECLARE @tempCount NVARCHAR(2000)  
    DECLARE @tempMain NVARCHAR(2000)  
    DECLARE @outputRow NVARCHAR(2000)        
  DECLARE @ParmDefinition NVARCHAR(4000)    
  IF @pageSize = 0 SET @pageNo = -1   
    SET @beginRow = (@pageNo - 1) * @pageSize    + 1  
    SET @endRow = @pageNo * @pageSize  
    SET @tempLimit = 'rows BETWEEN @beginRow AND @endRow '  
  
    SET @ParmDefinition =   
    N'@recordTotal INT OUTPUT,  
      @D1 INT = NULL,  
      @D2 INT = NULL,   
      @D3 INT = NULL,   
      @D4 INT = NULL,  
      @D5 INT = NULL,   
      @D6 INT = NULL,
      @S1 varchar(50) = NULL,  
      @S2 varchar(50) = NULL,  
      @S3 varchar(50) = NULL,  
      @S4 varchar(50) = NULL,  
      @S5 varchar(50) = NULL,  
      @S6 varchar(50) = NULL,   
      @T1 DATETIME = NULL,   
      @T2 DATETIME = NULL,   
      @T3 DATETIME = NULL,   
      @T4 DATETIME = NULL';        
    --�������Ϊ�ܼ�¼��  
    IF @IsRecordTotal = 1   
    BEGIN  
   SET @tempCount =   
   ' SELECT @recordTotal = COUNT(1)   
     FROM '+ @fromstring  
     
    PRINT @tempMain  
   EXEC SP_EXECUTESQL @tempCount,@ParmDefinition,  
     @recordTotal = @recordTotal OUTPUT,  
     @D1 = @D1,  
     @D2 = @D2,  
     @D3 = @D3,   
     @D4 = @D4, 
     @D5 = @D5,
     @D6 = @D6,  
     @S1 = @S1,   
     @S2 = @S2,  
     @S3 = @S3,  
     @S4 = @S4,  
     @S5 = @S5,  
     @S6 = @S6,   
     @T1 = @T1,   
     @T2 = @T2,   
     @T3 = @T3,   
     @T4 = @T4;   
    END  
      
    --��ѯ��һҳ  
    IF @pageNo = 1   
    BEGIN  
   SET @tempMain =   
   ' SELECT top(@pageSize) '  
    + CASE WHEN @IsRecordTotal = 1 THEN '@recordTotal AS pcount, ' ELSE '' END  
    + CASE WHEN @IsRowNo = 1 THEN 'ROW_NUMBER() OVER(order by '+@orderString+') AS rows , ' ELSE '' END  
    + @selectstring +'   
     FROM '+@fromstring+'    
     order by '+@orderString  
     
    END  
    ELSE IF @pageNo IN(0,-1)   
    BEGIN  
   SET @tempMain =   
   ' SELECT '  
    + CASE WHEN @IsRecordTotal = 1 THEN '@recordTotal AS pcount, ' ELSE '' END  
    + CASE WHEN @IsRowNo = 1 THEN 'ROW_NUMBER() OVER(order by '+@orderString+') AS rows , ' ELSE '' END  
    + @selectstring +'   
     FROM '+@fromstring+'    
     order by '+@orderString  
    END  
    ELSE  
    BEGIN    
    --����ѯ���ؽ����  
    SET @tempMain =   
    'SELECT '  
    + CASE WHEN @IsRecordTotal = 1 THEN '@recordTotal AS pcount, ' ELSE '' END  
    + CASE WHEN @IsRowNo = 1 THEN 'rows, ' ELSE '' END  
    + @returnstring +'   
   FROM   
     (  
      SELECT ROW_NUMBER() OVER(order by '+@orderString+') AS rows ,'+@selectstring+'   
       FROM '+@fromstring+'   
     ) AS main_temp   
   WHERE '+@tempLimit  
    END  
    PRINT @tempMain  
    SET @ParmDefinition =   
    N' @D1 INT = NULL,  
      @D2 INT = NULL,   
      @D3 INT = NULL,   
      @D4 INT = NULL,  
      @D5 INT = NULL,   
      @D6 INT = NULL,  
      @S1 varchar(50) = NULL,  
      @S2 varchar(50) = NULL,  
      @S3 varchar(50) = NULL,  
      @S4 varchar(50) = NULL,  
      @S5 varchar(50) = NULL,  
      @S6 varchar(50) = NULL,   
      @T1 DATETIME = NULL,   
      @T2 DATETIME = NULL,   
      @T3 DATETIME = NULL,   
      @T4 DATETIME = NULL,   
      @recordTotal INT = NULL,   
      @pageSize INT = NULL,   
      @beginRow INT = NULL,   
      @endRow INT = NULL';    
       EXEC SP_EXECUTESQL @tempMain,@ParmDefinition,  
     @D1 = @D1,  
     @D2 = @D2,  
     @D3 = @D3,   
     @D4 = @D4,  
     @D5 = @D5,
     @D6 = @D6, 
     @S1 = @S1,   
     @S2 = @S2,  
     @S3 = @S3,  
     @S4 = @S4,  
     @S5 = @S5,  
     @S6 = @S6,   
     @T1 = @T1,   
     @T2 = @T2,   
     @T3 = @T3,   
     @T4 = @T4,   
     @recordTotal = @recordTotal,   
     @pageSize = @pageSize,   
     @beginRow = @beginRow,   
     @endRow = @endRow;   
END  