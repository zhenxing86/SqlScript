USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[GetUserModel]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[GetUserModel]
@userid int
AS
BEGIN
  select t1.userid,t1.account,t1.pwd,100 as usertype,t1.gid,t2.kid,t1.username from group_user t1,group_baseinfo t2 where t1.gid=t2.gid and  userid=@userid
END

--select * from group_user











GO
