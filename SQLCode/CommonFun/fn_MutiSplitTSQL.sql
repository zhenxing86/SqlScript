USE CommonFun
GO
/*
-- Author:      Master̷
-- Create date: 2013-07-04
-- Description:
�������ڽ��ַ�����ֳɱ�
 *����˵����@string: ��Ҫ��ֵ��ַ���
                ��ʽΪ: ��1���� @colseparator ��2���� @colseparator ...��5���� @rowseparator[...]
                �ر�˵�����ַ�����ͷ��β��Ҫ���� @rowseparator 
 *          @rowseparator: �зָ���
 *          @colseparator�� �зָ���
 *����ֵ��
    �������ر�ṹ(col1 varchar(), col2 varchar(), col3 varchar(), col4 varchar(), col5 varchar())
    ���г�����ʵ�ʲ���Ϊ׼
 *���ƣ���������֧�����5�У�������������������������ݶ�ʧ
-- Memo:
  1: select col1,col2,col3,col4
	   from dbo.fn_MutiSplitTSQL('092-1350,099201-080901,12050720,2012-6-11$092-0970,099204-072301,12050734,2012-6-11','$',',')   
  2: select *
	   from dbo.fn_MutiSplitTSQL('092-1350,099201-080901,12050720,2012-6-11,ab,cd$092-0970,099204-072301,12050734,2012-6-11','$',',')   
*/
ALTER FUNCTION [dbo].[fn_MutiSplitTSQL]      
  (@string NVARCHAR(MAX), @rowseparator NvarCHAR(10) ,@colseparator NVARCHAR(10)= N',') RETURNS TABLE      
AS 
     
RETURN    
  select * 
    from (SELECT d.pos ,'col'+ cast( (n - LEN(REPLACE(LEFT(col, n), @colseparator, '')))/LEN(@colseparator) + 1 as varchar(10)) AS attribute,      
                 SUBSTRING(col, n, CHARINDEX(@colseparator, col + @colseparator, n) - n) AS value      
            FROM (select Row_number()over(order by n) pos ,  
                         substring(@string, n, charindex(@rowseparator,@string+@rowseparator,n)-n)as col  
                    from Nums1w  
                    where n<=len(@string+'a') and charindex(@rowseparator,@rowseparator+@string,n)=n  
                 ) AS D      
           JOIN Nums1w a ON  n<=len(col+'a') and charindex(@colseparator,@colseparator+col,n)=n   
          ) as d    
    PIVOT(max(value) FOR attribute     
      IN(col1,col2 ,col3,col4,col5 )) AS P      
      

GO


select *
	   from dbo.fn_MutiSplitTSQL('092-1350,099201-080901,12050720,2012-6-11$092-0970,099204-072301,12050734,2012-6-11','$',',')   
select *
	   from dbo.fn_MutiSplitTSQL('092-1350##&099201-080901##&12050720##&2012-6-11$&$&092-0970##&099204-072301##&12050734##&2012-6-11','$&$&','##&')   
GO