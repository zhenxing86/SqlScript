USE [GBAppTemp]
GO
/****** Object:  StoredProcedure [dbo].[getclassinfo]    Script Date: 2014/11/24 23:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getclassinfo]  
@kid int
 AS 	

select  [cid]
           ,[cname],t2.gname
            from basicdata..class t1 left join basicdata..grade t2 on t1.grade=t2.gid
where 
 kid=@kid and deletetag=1	
-- and cid in(60240,60237)
--and cid in (60242,60241,60240,60239,60238,60237)
--and cid in (56793,60060,60067,60065)
--and grade in(37)
--and cid=57821
order by grade

































GO
