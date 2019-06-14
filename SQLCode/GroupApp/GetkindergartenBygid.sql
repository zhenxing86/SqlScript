USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[GetkindergartenBygid]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetkindergartenBygid]
@gid int
as 
select -1 kid,'全部' kname
union all
select n.kid,n.[kname] from dbo.group_baseinfo g 
inner join BasicData..Area a on a.superior=g.areaid
inner join BasicData..kindergarten n on n.residence=a.ID 
where g.gid=@gid


GO
