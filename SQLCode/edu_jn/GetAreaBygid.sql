USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[GetAreaBygid]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAreaBygid]
@gid int
as 
select -1 ID,'全部' Title,0 Superior,0 [Level],'0' Code
union all
select ID,Title,Superior,[Level],convert(varchar,Code) from dbo.group_baseinfo g 
inner join Area a on a.superior=g.areaid
where g.gid=@gid


GO
