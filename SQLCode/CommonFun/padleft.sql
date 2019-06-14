use CommonFun
go
/*  
-- Author:      Master̷  
-- Create date: 2013-04-27  
-- Description: 
-- Memo:  
    
*/  
create function [dbo].[padleft]  
(  
    @str varchar(50),   --��Ҫ�����ַ���  
    @totalwidth int,    --����ĳ���  
    @paddingchar char(1)--���ʹ�õ��ַ�  
)  
returns varchar(1000)  as    
begin   
   declare @s varchar(100)  
   set @s = @str  
   if ( len(@str) < @totalwidth)  
      begin  
        declare @i int  
        declare @strlen int  
        declare @temp varchar(100)  
        set @i = 1;   
        set @strlen = @totalwidth - len(@str)  
        set @temp = '';  
         while(@i <= @strlen )  
              begin  
                   set @temp =  @temp + @paddingchar;  
                   set @i = @i + 1;  
              end  
         set @s = @temp + @str  
      end  
   return (@s)  
  
end  
  
   
  