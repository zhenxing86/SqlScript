USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[mobile_classapp_class_noticeByid]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[mobile_classapp_class_noticeByid]
@classid int,
@kid int,
@noticeid int
as

select t1.noticeid,title,[content],author,createdatetime from classapp..class_notice 
 t1 inner join classapp..class_notice_class t2 on t1.noticeid=t2.noticeid
where t1.kid=@kid and t1.status=1 and t2.classid=@classid and t1.noticeid=@noticeid order by 
createdatetime desc


GO
