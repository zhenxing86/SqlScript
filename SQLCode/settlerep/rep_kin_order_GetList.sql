USE [settlerep]
GO
/****** Object:  StoredProcedure [dbo].[rep_kin_order_GetList]    Script Date: 08/10/2013 10:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：统计智慧豆充值金额
--项目名称：家长增值服务结算报表
--说明：智慧豆充值金额统计
--时间：2013-3-7 11:50:29
------------------------------------ 
alter PROCEDURE [dbo].[rep_kin_order_GetList]
@privince int
,@city int
,@area int
,@kid int
,@kname varchar(120)
,@sourceType int
,@agent int
,@developer int
,@txttime1 datetime
,@txttime2 datetime
 AS
  
set @kname=CommonFun.dbo.FilterSQLInjection(@kname)
 
declare @pcount int
,@excuteSql nvarchar(2000),@whereSql nvarchar(2000)

set @whereSql=''
if @privince>0  --省
begin
	set @whereSql =@whereSql+' and privince ='+Str(@privince)
end
if @city >0  --省、市
begin
	set @whereSql =@whereSql+' and city ='+Str(@city) 
end
if @area>0  --省、市、县
begin
	set @whereSql =@whereSql+' and area ='+Str(@area) 
end

if @sourceType=1 --市场
begin
	set @whereSql =@whereSql+' and infofrom =''市场人员''' 
	if @developer>0
	begin
		set @whereSql =@whereSql+' and uid ='+Str(@developer)
	end 
end
else if @sourceType=2 --网络
begin
	set @whereSql =@whereSql+' and infofrom =''客服人员'''
	if @developer>0
	begin
		set @whereSql =@whereSql+' and uid ='+Str(@developer)
	end 
end
else if @sourceType=3 --代理
begin
	set @whereSql =@whereSql+' and infofrom =''代理'''
	if @agent>0
	begin
		set @whereSql =@whereSql+' and abid ='+Str(@agent)
	end
	if @developer>0
	begin
		set @whereSql =@whereSql+' and developer ='+Str(@developer)
	end
end

if @kid>0
begin
	set @whereSql =@whereSql+' and kid ='+Str(@kid)
end 
if len(isnull(@kname,''))>0
begin
	set @whereSql =@whereSql+' and kname like ''%'+@kname+'%'''
end

create table #temp
(
	kid int
	,kname nvarchar(100)
	,personCount int
	,moneyCount int
)
	
if len(isnull(@whereSql,''))=0 
begin
    insert into #temp(kid,kname,personCount,moneyCount)
	select kid,kname, COUNT(userid) personCount,SUM(plus_amount) beanCount
	from(
		select u.kid,kg.kname,o.userid,SUM(plus_amount) plus_amount
		from PayApp..order_record o
		left join BasicData..[user] u on u.userid = o.userid
		left join BasicData..kindergarten kg on kg.kid =u.kid
		where actiondatetime >= @txttime1 and actiondatetime<= @txttime2 and o.status=1
		group by u.kid,kg.kname,o.userid
	)t
	group by kid,kname
	
end
else
begin
    
    create table #kintemp
	(
	kid int
	)
	set @excuteSql='insert into #kintemp(kid) select kid from ossapp..kinbaseinfo where 1=1 '+@whereSql
	print @excuteSql
	exec sp_executesql @excuteSql
	
	insert into #temp(kid,kname,personCount,moneyCount)
	select kid,kname, COUNT(userid) personCount,SUM(plus_amount) beanCount
	from(
		select u.kid,kg.kname,o.userid,SUM(plus_amount) plus_amount
		from PayApp..order_record o
		left join BasicData..[user] u on u.userid = o.userid
		left join BasicData..kindergarten kg on kg.kid =u.kid
		inner join #kintemp k on k.kid =u.kid
		where actiondatetime >= @txttime1 and actiondatetime<= @txttime2 and o.status=1
		group by u.kid,kg.kname,o.userid
	)t
	group by kid,kname
	
	drop table #kintemp
end

insert into #temp(kid,kname,personCount,moneyCount)
select 0,'合计',isnull(SUM(personCount),0) personCount,isnull(SUM(moneyCount),0) beanCount
from #temp

select kid,(case when kid is null then '其他(注：小朋友已离园)' else kname end) kname,personCount,moneyCount from #temp 
order by (case when kid>0 then -1 when kid is null then 0 else 1 end) asc, personCount desc

drop table #temp
GO
