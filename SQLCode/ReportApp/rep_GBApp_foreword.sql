USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_GBApp_foreword]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[rep_GBApp_foreword]
@gbid int
as

--学期寄语
select foreword
from GBApp..Growthbook gb
inner join GBApp..foreword fw on gb.hbid=fw.hbid
where gb.gbid=@gbid





GO
