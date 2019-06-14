USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_GBApp_familyinfo_UpPhoto]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[rep_GBApp_familyinfo_UpPhoto]
@gbid int,
@m_family_photo varchar(1000),
@net int
as


update  GBApp..familyinfo set m_family_photo=@m_family_photo ,net=@net,updatetime=GETDATE()
where gbid=@gbid

 exec gbapp..[UpdateGBRefreshTag] @gbid

GO
