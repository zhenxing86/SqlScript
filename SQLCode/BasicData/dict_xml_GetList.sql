use BasicData
go

/*
-- Author:  xzx  
-- Create date: 2014-07-30  
-- Description: �޸�����  
demo:

dict_xml_GetList '����'

*/
Create proc dict_xml_GetList
@catalog varchar(40)
as

begin
 select ID,Code,Caption,[Catalog],OrderBy
  from dict_xml 
   where [Catalog] =@catalog
end