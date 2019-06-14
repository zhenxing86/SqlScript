USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[T_class_GetModel]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--用途：修改班级论坛内容 
--项目名称：ClassHomePage
--说明：
--时间：2009-2-19 17:09:59
------------------------------------
CREATE PROCEDURE [dbo].[T_class_GetModel]
@classid int
 AS 
 SELECT t1.cid,t1.[cname],t2.code,t1.grade FROM basicdata..class t1 inner join basicdata..personalize_class t2 on t1.cid=t2.cid  WHERE t1.cid=@classid	 and t2.cid=@classid




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'T_class_GetModel', @level2type=N'PARAMETER',@level2name=N'@classid'
GO
