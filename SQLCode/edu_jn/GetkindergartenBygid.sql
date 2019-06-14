USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[GetkindergartenBygid]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GetkindergartenBygid]
@gid int,
@aid int
as 

if(@aid=-1)
begin
select distinct n.kid,n.[kname] from dbo.gartenlist n
where areaid=@gid
end
else
begin
select distinct n.kid,n.[kname] from dbo.gartenlist n
where areaid=@aid

end



GO
