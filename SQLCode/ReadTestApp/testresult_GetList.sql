USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[testresult_GetList]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[testresult_GetList]    
@subid int    
as    
begin    
select id,resultcontent,startrange,endrange,result   from TestResult   where  subid=@subid  
      
end 
GO
