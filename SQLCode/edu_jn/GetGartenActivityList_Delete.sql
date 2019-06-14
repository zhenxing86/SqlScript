USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[GetGartenActivityList_Delete]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetGartenActivityList_Delete]
	@contentid bigint,
	@uid int
	 AS
	 
	 declare @pcount int
	select @pcount=count(1) from dbo.ActicleState where contentid=@contentid
if(@pcount>0)
begin

delete dbo.ActicleState where contentid=@contentid

end
else
begin

insert into dbo.ActicleState(contentid,ishow,uid,uptime)
values (@contentid,1,@uid,getdate())

update cms_content set orderno=0 where contentid=@contentid

end


GO
