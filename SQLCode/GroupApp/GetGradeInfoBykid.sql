USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[GetGradeInfoBykid]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetGradeInfoBykid]
@kid int
as 

select gid,gname from BasicData..grade g
left join BasicData..class c on g.gid=c.grade 
where kid=@kid and deletetag=1
group by  gid,gname,g.[order]
order by g.[order]



GO
