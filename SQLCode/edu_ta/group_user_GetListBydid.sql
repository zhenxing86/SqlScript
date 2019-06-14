USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[group_user_GetListBydid]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[group_user_GetListBydid]
@did int
,@aid varchar(max)
,@uid int
as 

declare @udid int,@uareaid int,@udepid int

select @udid=0,@uareaid=areaid,@udepid=depid from dbo.group_user where userid=@uid


--if(@aid=-1)
--begin
--insert into #temp(tareaid)
--select ID from area a 
-- where (a.ID=@uareaid or a.Superior=@uareaid) 
--end
--else
--begin
--insert into #temp(tareaid)
--values(@aid)
--end



create table #temp
(
tareaid int
,lsuperior int
,aname nvarchar(100)
)


--保证区域属于用户下的
insert into #temp
select ID,-2,title from Area 
where superior=@uareaid or ID=@uareaid

--将需要查询的区域列表查询出来
insert into #temp
exec('select distinct a.ID,-1,title from #temp t
inner join Area a on superior=t.tareaid or ID=t.tareaid
where lsuperior=-2 and a.ID in ('+@aid+')')
--删除多余的区域
delete #temp where lsuperior=-2


select userid,username, aname from dbo.group_user 
inner join #temp on tareaid=areaid

order by areaid asc

/*
--市管理员可看所有的
if(@udepid=1 and @udid=0)
begin


select userid,username,aname from dbo.group_user
inner join #temp on tareaid=areaid
where  did=@did
order by areaid asc


end
--区县管理员可以看区县的
else if(@udepid>1 and @udid=0)
begin

select userid,username, aname from dbo.group_user 
inner join #temp on tareaid=areaid
--where did=@did 
order by areaid asc
end
--市电教站或市托幼办的，只能看本单位的和区县隶属单位的
else if(@udepid=1 and @udid<0)
begin


select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where did=@udid
order by areaid asc

end
--区县电教站或市托幼办的，只能看本单位的
else if(@udepid>1 and @udid<0)
begin


select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where did=@udid
order by areaid asc


end
*/
drop table #temp


GO
