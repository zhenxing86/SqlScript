USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_GBApp_lifephoto]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[rep_GBApp_lifephoto]
@gbid int
as

--生活剪影
select m_path,net,updatetime
from  GBApp..gblifephoto lp 
where lp.gbid=@gbid



GO
