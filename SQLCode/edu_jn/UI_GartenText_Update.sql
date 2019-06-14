USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[UI_GartenText_Update]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UI_GartenText_Update]
@contentid bigint,
@title varchar(500),
@content varchar(max),
@ishow int,
@cuid int
AS 
 
 update cms_content set 
		title=@title,content=@content 
		where contentid=@contentid
 
 if(@ishow=1)
 begin
 
 delete ActicleState where contentid=@contentid
  
 end
 
  update dbo.config_manage set syn=1 where appname ='历下前台'

GO
