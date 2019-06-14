USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[rep_GBApp_ChildrenInfo]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[rep_GBApp_ChildrenInfo]
@gbid int
as

select child_name,nick_name,gender,animal,birthday,class_name,garten_name,love_thing,fear_thing,love_food,record,signature,m_my_photo ,net ,updatetime
from GBApp..ChildrenInfo ci 
where ci.gbid=@gbid




GO
