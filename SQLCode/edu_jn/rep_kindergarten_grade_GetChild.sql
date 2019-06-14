USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[rep_kindergarten_grade_GetChild]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--select * from BasicData..user_class
CREATE PROCEDURE [dbo].[rep_kindergarten_grade_GetChild]
@ty int
,@id int
,@aid int
,@status int
,@page int
,@size int
AS

create table #temp
(
kid varchar(50)
,kname varchar(200)
,g1 int
,g2 int
,g3 int
,g4 int
,g5 int
,g6 int
)

create table #temptable
(
kid varchar(50)
,kname varchar(200)
,classcount int
,gname varchar(50)
,gid varchar(50)
)
--托班,小班,中班,大班,学前班




create table #tempareaid
(
lareaid int,
lareatitle nvarchar(100)
)

declare @lever int,@clever int
select @lever=[level] from Area where ID=@id
select @clever=[level] from Area where ID=@aid


if(@lever=1 or (@lever=2 and @aid=-1))--省市进来的时候显示旗下区县，区县进来@aid=-1的时候，显示街道
begin



insert into #tempareaid(lareaid,lareatitle)
select ID,Title from Area 
where (superior=@id or ID=@id)



if(@lever=1 and @aid=-1 or @id=@aid)
begin



insert into #temptable
select t.lareaid,t.lareatitle
,count(r.uid),r.gradename,r.gradeid
from #tempareaid t
inner join Area a on (lareaid=ID or superior=lareaid)
left join rep_kininfo r on a.ID=r.areaid
where (lareaid<>@ID or (lareaid=@ID and r.areaid=@ID) )
group by t.lareaid,t.lareatitle,gradename,r.gradeid


end
else
begin


insert into #temptable
select a.lareaid,a.lareatitle
,count(r.uid),r.gradename,r.gradeid
from #tempareaid a
inner join rep_kininfo r on a.lareaid=r.areaid
group by a.lareaid,a.lareatitle,gradename,r.gradeid

end

end


if(@aid>0)--当区域大于0的时候，表示已经选择了街道，于是显示幼儿园出来
begin

insert into #tempareaid(lareaid,lareatitle)
select ID,Title from Area 
where (superior=@aid or ID=@aid) and (-1=@aid or ID=@aid)




insert into #temptable
select r.kid,r.kname,count(r.uid),gradename,r.gradeid 
from rep_kininfo r
inner join #tempareaid a on a.lareaid=r.areaid
group by r.kid,r.kname,gradename,r.gradeid
end








insert into #temp
select kid,kname
,sum(case when gname='托班' then classcount else 0 end ) 托班
,sum(case when gname='小班' then classcount else 0 end ) 小班
,sum(case when gname='中班' then classcount else 0 end ) 中班
,sum(case when gname='大班' then classcount else 0 end ) 大班
,sum(case when gname='学前班' then classcount else 0 end ) 学前班
,sum(classcount) 总班级数
from #temptable where gname in ('托班','小班','中班','大班', '学前班' ) 
group by kid,kname


--当市进来的时候，没有班级的街道补充进去
if(@lever=1 and (@aid=-1 or @id=@aid))
begin
insert into #temp
select ID,Title,0,0,0,0,0,0 from Area
 where (@id=ID or superior=@id)
 and not exists(select 1 from #temp where ID=kid)
end

if(@lever=2  and @aid=-1)
begin
insert into #temp
select ID,Title,0,0,0,0,0,0 from Area
 where (@id=ID or superior=@id)
 and not exists(select 1 from #temp where ID=kid)
end



insert into #temp
select count(kname),'合计',sum(g1) 托班,sum(g2) 小班,sum(g3) 中班,sum(g4) 大班,sum(g5) 学前班,sum(g6) 总班级数 from #temp




declare @pcount int
select @pcount=count(kid) from #temp

IF(@page>1)
	BEGIN
	
		DECLARE @prep int,@ignore int

		SET @prep=@size*@page
		SET @ignore=@prep-@size

		DECLARE @tmptable TABLE
		(
			row int IDENTITY(1,1),
			tmptableid bigint
		)

			SET ROWCOUNT @prep
			INSERT INTO @tmptable(tmptableid)
			select kid from #temp
order by (case when kid=@id or kid=@aid then 1 ELSE case when kname<>'合计' then 2 else 3 end END) asc,kid asc

			SET ROWCOUNT @size
			SELECT 
				@pcount,kid,kname,g1 托班,g2 小班,g3 中班,g4 大班,g5 学前班,g6 总人数
			FROM 
				@tmptable AS tmptable	
			inner join #temp n on n.kid=tmptableid
			WHERE
				row>@ignore 

end
else
begin
SET ROWCOUNT @size
	select @pcount,kid,kname,g1 托班,g2 小班,g3 中班,g4 大班,g5 学前班,g6 总人数 from #temp
order by (case when kid=@id or kid=@aid then 1 ELSE case when kname<>'合计' then 2 else 3 end END) asc,kid asc

end







drop table #temptable
drop table #temp

drop table #tempareaid




GO
