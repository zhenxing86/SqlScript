USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[testpapercategory_GetList]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[testpapercategory_GetList]      
      
as       
begin      
select  id,categorytitle from  Category where deletetag=1      
       
end  
GO
