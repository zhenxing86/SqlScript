USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetThemeByClass]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetThemeByClass]
@Cid int
as
select * from t_class where ID=@Cid

GO
