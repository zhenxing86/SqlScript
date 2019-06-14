USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[GetClassInfoBykid]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GetClassInfoBykid]
@kid int
,@gid int
as 

select cid,cname from BasicData..grade g
left join BasicData..class c on g.gid=c.grade 
where kid=@kid and (@gid=-1 or g.gid=@gid) and deletetag=1
order by c.[order] 








GO
