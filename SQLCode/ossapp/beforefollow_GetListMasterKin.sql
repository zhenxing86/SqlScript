USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[beforefollow_GetListMasterKin]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--GetListTag
------------------------------------
CREATE PROCEDURE [dbo].[beforefollow_GetListMasterKin]
@bid int
,@bfid int
 AS 


SELECT 
	g.[ID],[kname] 
 FROM [beforefollow] g
where  g.bid=@bid and ismaterkin=1 and @bfid<>g.ID






GO
