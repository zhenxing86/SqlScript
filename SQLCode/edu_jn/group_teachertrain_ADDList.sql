USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[group_teachertrain_ADDList]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[group_teachertrain_ADDList] 
 @userids varchar(max),
 @timetype int,
 @level int,
 @inuserid int,
 @kid int
 
 AS 

set @userids=@userids

	INSERT INTO [group_teachertrain](
  [userid],
 [timetype],
 [level],
 [inuserid],
 [intime],
 [kid],
 [deletetag])

exec('select userid 
,'+@timetype+'
,'+@level+'
,'+@inuserid+'
,getdate()
,'+@kid+',1 
from BasicData..[user] where userid in ('+@userids+')')

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID










GO
