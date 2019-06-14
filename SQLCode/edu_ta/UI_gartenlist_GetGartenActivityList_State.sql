USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[UI_gartenlist_GetGartenActivityList_State]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：查询记录信息 
--项目名称：gartenlist
------------------------------------
CREATE PROCEDURE [dbo].[UI_gartenlist_GetGartenActivityList_State]

	@page int,
	@size int,
	@ishow int,
	@areaid int
	 AS
	 
	 declare @pcount int
	 declare @size_ int
	
	
	DECLARE @tp TABLE
	(
		pc int
	)

	insert into @tp
	SELECT  count(1) FROM KWebCMS..cms_content t1 right join
	[gartenlist] t2 on t1.siteid=t2.kid 
left join dbo.ActicleState t3 on t3.contentid=t1.contentid and t2.areaid=@areaid
	where (t1.categoryid=17095) and t1.title <> '幼儿园网站开通啦！欢迎家长们上网浏览！' and t1.deletetag = 1
and (t3.ishow = @ishow or (@ishow=0  and t3.ishow is null ) or @ishow=-1)

	select @pcount=count(1) from @tp 
	
	IF(@page>1)
		BEGIN
			DECLARE @prep int,@ignore int
			SET @prep=@size*@page
			SET @ignore =@prep-@size
			DECLARE @tmptable TABLE
			(
				row int IDENTITY(1,1),
				tmptableid bigint
			)
			 SET ROWCOUNT @prep
			 INSERT INTO @tmptable (tmptableid)
			 SELECT     t1.contentid      FROM KWebCMS..cms_content t1 right join
			[gartenlist] t2 on t1.siteid=t2.kid and t2.areaid=@areaid

left join dbo.ActicleState t3 on t3.contentid=t1.contentid
			where ( t1.categoryid=17095) and t1.title <> '幼儿园网站开通啦！欢迎家长们上网浏览！' and t1.deletetag = 1
and (t3.ishow = @ishow or (@ishow=0  and t3.ishow is null ) or @ishow=-1)
order by contentid desc



			 SET ROWCOUNT @size
				SELECT  @pcount,t1.contentid,t1.title,t1.createdatetime,t2.kname ,t2.sitedns ,t3.ishow  	FROM  @tmptable a
					INNER JOIN  KWebCMS..cms_content t1 on a.tmptableid = t1.contentid and t1.deletetag = 1
					inner join [gartenlist] t2 on t1.siteid=t2.kid  
						left join dbo.ActicleState t3 on t3.contentid=t1.contentid    	
					WHERE row>@ignore 
	end
	else
	begin
	SET ROWCOUNT @size
	if(@pcount is null)
	begin
	set @pcount=0
	end
	
	select  @pcount,t1.contentid,t1.title,t1.createdatetime,t2.kname ,t2.sitedns,t3.ishow 
	from KWebCMS..cms_content t1 right join
	[gartenlist] t2 on t1.siteid=t2.kid
	left join dbo.ActicleState t3 on t3.contentid=t1.contentid
	where (t1.categoryid=17095) and t1.title <> '幼儿园网站开通啦！欢迎家长们上网浏览！' and t1.deletetag = 1
	and (t3.ishow = @ishow or (@ishow=0  and t3.ishow is null ) or @ishow=-1) and t2.areaid=@areaid
order by t1.contentid desc

	end
	RETURN 0

GO
