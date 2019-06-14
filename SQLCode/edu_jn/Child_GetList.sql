USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[Child_GetList]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Child_GetList] 
@kid int,
@cid int,
@uname varchar(100)
as 
select 
[uid],[uname] from 

dbo.rep_kininfo k

where 
k.kid=@kid
and (cid=@cid or @cid =-1) and [uname] like '%'+@uname+'%' and usertype=0

GO
