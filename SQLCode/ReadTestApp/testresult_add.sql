USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[testresult_add]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[testresult_add]      
@startrange int,      
@endrange int ,      
@resultcontent  ntext,    
@subid int ,  
@categoryid int,  
@subtit nvarchar(50)   
as      
begin      
insert into TestResult(startrange,endrange,resultcontent,subid) values(@startrange,@endrange,@resultcontent,@subid)      
if(@@ERROR<>0)      
return -1      
else      
return 1      
end 
GO
