USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_GBApp_classinfo]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[rep_GBApp_classinfo]
@gbid int
as

--我的班级
select class_teacher,m_class_photo,class_notice,net ,updatetime
from GBApp..Growthbook gb
inner join GBApp..classinfo c on gb.hbid=c.hbid
where gb.gbid=@gbid




GO
