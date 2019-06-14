USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[subcategory_Update]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE proc [dbo].[subcategory_Update]    
@subid int,    
@subtit nvarchar(50),    
@categoryid int    
as    
begin    
   update SubCategory set subtit=@subtit, categoryid=@categoryid where subid=@subid     
  if(@@ERROR<>0)    
  return -1    
  else    
  return 1    
end
GO
