USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[BasicDataArea_GetListByAid]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[BasicDataArea_GetListByAid]
@gid int
,@aid int
,@level int
as


select ID,Title,Superior,[level],Code,0 from BasicData..Area 
where superior=@aid or ID=@aid




GO
