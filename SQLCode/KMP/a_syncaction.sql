USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[a_syncaction]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--exec [a_syncaction] 0

CREATE PROCEDURE [dbo].[a_syncaction]
@action int
--@kid nvarchar(200)
as

--declare @kid nvarchar(1000)
--select @kid=

--child
insert into t_syncchild(userid,action,actiondatetime,issync) select userid,@action as action,getdate() as actiondatetime,0 as issync  from t_child
where status=1 and kindergartenid in (select id from t_kindergarten where city=402 and status=1)

--teacher
insert into t_syncstaffer(userid,action,actiondatetime,issync) select userid,@action as action,getdate() as actiondatetime,0 as issync  from t_staffer
where status=1 and kindergartenid in(select id from t_kindergarten where city=402 and status=1)

--class
insert into t_syncclass(classid,action,actiondatetime,issync) select id as classid,@action as action,getdate() as actiondatetime,0 as issync  from t_class
where status=1 and kindergartenid in(select id from t_kindergarten where city=402 and status=1)

--kindergarten
insert into t_synckindergarten(siteid,action,actiondatetime,issync) select id as siteid,@action as action,getdate() as actiondatetime,0 as issync  from t_kindergarten
where id in(select id from t_kindergarten where city=402 and status=1)
--carman
insert into t_synccarman(id,action,actiondatetime,issync) select id,0 as action,getdate() as actiondatetime,0 as issync  from tb_carman
where kid in(select id from t_kindergarten where city=402 and status=1)


--delete t_syncchild
--
--select * from t_syncstaffer
--
--select * from t_syncclass
--
--select * from t_synckindergarten
--
--
--delete from t_syncchild
--
--delete from t_syncstaffer
--
--delete from t_syncclass
--
--delete from t_synckindergarten


GO
