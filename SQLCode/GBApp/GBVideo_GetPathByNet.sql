USE [GBApp]
GO
/****** Object:  StoredProcedure [dbo].[GBVideo_GetPathByNet]    Script Date: 2014/11/24 23:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








--select top 1 * from video_temp
-- =============================================
-- Author:		xie
-- Create date: 2012-12-20
-- Description:	获取指定服务器上的视频路径列表 
--update gbvideo set filesize=0 where 
--exec GBVideo_GetPathByNet 191598
-- =============================================
CREATE PROCEDURE [dbo].[GBVideo_GetPathByNet]
@net int,
@type int
AS
BEGIN
  if @type>=0
  begin
--select top 1 * from gbvideo where net=224
	SELECT distinct [path] from gbvideo  where  videoid=5 --filesize=0
  end
  else
  begin
	SELECT distinct [path] from gbvideo  --where  videoid=5-- and updatetime>='2012-12-24'
  end

END








GO
