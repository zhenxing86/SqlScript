USE [ossrep]
GO
/****** Object:  StoredProcedure [dbo].[rep_vip_payinfo_pro]    Script Date: 2014/11/24 23:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[rep_vip_payinfo_pro]
@privince int
,@city int
,@area int
,@txttime1 datetime
,@txttime2 datetime
 AS
 
declare @pcount int,@a int,@p nvarchar(10),@c nvarchar(10),@e nvarchar(10),@astr nvarchar(20),@yearmonth varchar(20)

set @a=dbo.GetKinArea(@privince,@city,@area,0)

set @p=dbo.GetKinAreaStr(@privince,0)
set @c=dbo.GetKinAreaStr(@city,0)
set @e=dbo.GetKinAreaStr(@area,0)




set @astr=''

if(@p is not null)
begin

set @astr=@astr+'-'+@p
end

if(@c is not null and @p<>@c)
begin

set @astr=@astr+'-'+@c
end

if(@e is not null)
begin

set @astr=@astr+'-'+@e
end
 
set @astr=SUBSTRING(@astr,2,len(@astr))
 
 
 create table #temp
 (
 a1 int,
 a2 nvarchar(100),
 a3 varchar(10),
 a4 int,
 a5 int,
 a6 int,
 a7 int,
 a8 int,
 a9 int,
 a0 int,
 a11 int
 )
 

if(@city=0)
begin

create table #areatemp
(
ID int
,Title nvarchar(100)
,Superior int
,[Level] int
)


insert into #areatemp(ID,Title,Superior,[Level])
select ID,Title,Superior,[Level] from BasicData..Area 
where (Superior=@privince or ID=@privince)
 
set @pcount=@@ROWCOUNT

insert into #temp(a1,a2,a3,a4,a5,a6,a7,a8,a9,a0,a11)
select @pcount,case when (a.[Level]=0)  then @astr else @astr+'-'+a.Title end,@yearmonth
,sum(case when paytype='维护费' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,sum(case when paytype='VIP费' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,sum(case when paytype='个性化费用' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,a.ID
,sum(case when paytype='维护费' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,sum(case when paytype='VIP费' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,sum(case when paytype='个性化费用' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,a.[Level]
 from #areatemp a
 left join dbo.rep_vip_payinfo p on a.ID=p.city
where p.province=@privince 
group by a.Title,a.[Level],ID order by case when a.[Level]=0 then 0 else 1 end asc

 drop table #areatemp
end 
else if(@area=0)
begin

select @pcount=COUNT(1) from BasicData..Area 
where (Superior=@city or ID=@city) 

insert into #temp(a1,a2,a3,a4,a5,a6,a7,a8,a9,a0,a11)
select @pcount,case when (a.[Level]=1)  then @astr else @astr+'-'+a.Title end,@yearmonth
,sum(case when paytype='维护费' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,sum(case when paytype='VIP费' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,sum(case when paytype='个性化费用' and paytime between @txttime1 and @txttime2 then 1 else 0 end)
,a.ID
,sum(case when paytype='维护费' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,sum(case when paytype='VIP费' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,sum(case when paytype='个性化费用' and paytime between @txttime1 and @txttime2 then p.paymoney else 0 end)
,a.[Level]
 from BasicData..Area a
 left join dbo.rep_vip_payinfo p on a.ID=p.areaid
where (Superior=@city or a.ID=@city) 
group by a.Title,a.[Level],ID order by case when a.[Level]=1 then 0 else 1 end asc

end
else
begin
insert into #temp(a1,a2,a3,a4,a5,a6,a7,a8,a9,a0,a11)
select 1,@astr,@yearmonth
,sum(case when paytype='维护费' then 1 else 0 end)
,sum(case when paytype='VIP费' then 1 else 0 end)
,sum(case when paytype='个性化费用' then 1 else 0 end),@a
,sum(case when paytype='维护费' and paytime between @txttime1 and @txttime2 then paymoney else 0 end)
,sum(case when paytype='VIP费' and paytime between @txttime1 and @txttime2 then paymoney else 0 end)
,sum(case when paytype='个性化费用' and paytime between @txttime1 and @txttime2 then paymoney else 0 end)
,2
 from dbo.rep_vip_payinfo 
where  areaid=@a and paytime between @txttime1 and @txttime2
end

select (a1+1),a2,a3,a4,a5,a6,a7,a8,a9,a0,a11 from #temp
union all
select '','合计','',sum(a4),sum(a5),sum(a6),sum(a7),sum(a8),sum(a9),sum(a0),0 from #temp

drop table #temp


GO
