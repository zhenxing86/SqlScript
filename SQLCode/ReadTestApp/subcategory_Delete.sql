USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[subcategory_Delete]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[subcategory_Delete]
@subid int
as
begin
	  update SubCategory set deletetag=0 where subid=@subid 
	 if(@@ERROR<>0)
	 return -1
	 else
	 return 1
end
GO
