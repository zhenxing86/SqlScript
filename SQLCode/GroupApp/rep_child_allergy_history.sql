USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_child_allergy_history]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		yz
-- Create date: 2014-7-28
-- Description: 幼儿过敏史情况
--[dbo].[rep_child_allergy_history] 12511,-1
-- =============================================
CREATE PROCEDURE [dbo].[rep_child_allergy_history]
@kid int,
@gid int

AS
BEGIN
	SET NOCOUNT ON;
	
	select '掌握本园幼儿有无过敏情况能够更好地安排饮食和日常生活接触的物品<br />避免幼儿接触过敏源，保障其健康'string
	
	
  select gorder,corder,Class,name,title
  from healthapp..test_allergy
  order by gorder,corder
  
  -----------------------------------------------
	--create table #t(gorder int,corder int,class varchar(50),name varchar(50),title varchar(50))
	
	--if @gid = -1
	--begin
	
	--insert into #t(gorder,corder,class,name,title)
	--select g.[order],
	--       c.[order],
	--       c.cname class,
	--       u.name name,
	--       h.title title
     
	--   from [healthapp].[dbo].[hc_user_health] uh
	--  inner join [HealthApp].[dbo].[hc_health] h
	--    on uh.hid = h.hid
	--  inner join BasicData..[user] u
	--    on uh.userid= u.userid
	--  inner join BasicData..user_class uc 
	--    on uh.userid = uc.userid
	--  inner join BasicData..class c
	--    on uc.cid = c.cid
	--  left join BasicData..grade g
	--    on g.gid = c.grade
	--  -- and u.kid = c.kid
	--  where u.kid = @kid
	--    and h.[types] = '过敏史'
	--  order by name
	  
	--  end
	  
	--  else
	  
	--  begin
	  
	--   insert into #t(gorder,corder,class,name,title)
	--  	select g.[order],
	--       c.[order],
	--  	   c.cname class,
	--       u.name name,
	--       h.title title
	       
 --   from [healthapp].[dbo].[hc_user_health] uh
	--  inner join [HealthApp].[dbo].[hc_health] h
	--    on uh.hid = h.hid
	--  inner join BasicData..[user] u
	--    on uh.userid= u.userid
	--  inner join BasicData..user_class uc 
	--    on uh.userid = uc.userid
	--  inner join BasicData..class c
	--    on uc.cid = c.cid
	--  -- and u.kid = c.kid
	--  left join BasicData..grade g
	--    on g.gid = c.grade
	--  where u.kid = @kid
	--    and c.grade = @gid
	--    and h.[types] = '过敏史'
	--  order by name
	  
	--  end
	  
	--  select distinct t.gorder,t.corder, t.name,t.class into #p from #t t
	  
	--  select p.gorder,
	--         p.corder,
	--         p.class,
	--         p.name,
	--         stuff((
	--                select '，'+ title 
	--                  from #t 
	--                 where p.name = name 
	--                 order by title 
	--                   for xml path('') 
	--               ),1,1,'') title
	--    from #p p
	    
	--    order by class
	    
	--  drop table #t,#p
	  
                                                                                                                          
END 
GO
