USE [ReadTestApp]
GO
/****** Object:  StoredProcedure [dbo].[testpapercategory_GetModel]    Script Date: 2014/11/25 11:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[testpapercategory_GetModel]
@categoryid int
as
begin
select  id,categorytitle,[description] from Category where id=@categoryid and deletetag=1
end

GO
