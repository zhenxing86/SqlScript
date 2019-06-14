USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[GetkindergartenBygidcc_hy]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







create PROCEDURE [dbo].[GetkindergartenBygidcc_hy] 
@areaid varchar(max),
@uid int,
@byxz nvarchar(100)
as 


declare @uareaid int
select @uareaid=areaid from group_user where userid=@uid




create table #temp
(
lareaid int
,lsuperior int
)


--保证区域属于用户下的
insert into #temp
select ID,-2 from Area 
where superior=@uareaid or ID=@uareaid

--将需要查询的区域列表查询出来
insert into #temp
exec('select distinct a.ID,-1 from #temp t
inner join Area a on superior=t.lareaid or ID=t.lareaid
where lsuperior=-2 and a.ID in ('+@areaid+')')
--删除多余的区域
delete #temp where lsuperior=-2



select kid,kname from gartenlist
inner join #temp on lareaid=areaid
where byxz = @byxz or @byxz=''



drop table #temp






GO
