USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[GetPagerCountByCategoryid]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [GetPagerCountByCategoryid] 
CREATE proc [dbo].[GetPagerCountByCategoryid]  
@categoryid int  
as  
begin  
declare @result int  
select @result=COUNT(1)from  TestPager p left join SubCategory s on p.id=s.testid left join Category c on s.categoryid=c.id
where c.id=@categoryid and p.deletetag=1
return @result  
end

 
GO
