USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[MsgTeacher_GetListByUid]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[MsgTeacher_GetListByUid]
@useridstr varchar(max)
,@page int
,@size int
as 

set @useridstr='0'+@useridstr

declare @pcount int
set @pcount=0
exec('select '+@pcount+','''','''',0 kid,(select title from Area where ID=areaid)  [kname],userid,username,tel,''''  from 
group_user
where userid in ('+@useridstr +')')

GO
