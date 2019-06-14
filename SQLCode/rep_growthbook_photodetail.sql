USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[rep_growthbook_photodetail]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[rep_growthbook_photodetail]
@gbid int
,@t int
AS

if(@t=0)
begin
select photoid,gbid,photo_desc,m_path,net,updatetime from gbapp..gblifephoto
where deletetag=1 and gbid=@gbid
end
else if(@t=1)
begin
select photoid,gbid,photo_desc,m_path,net,updatetime from gbapp..gbworkphoto
where deletetag=1 and gbid=@gbid
end
else if(@t=2)
begin
select videoid,gbid,sceenshot,[path],net,updatetime from gbapp..gbvideo
where gbid=@gbid
end
GO
