USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[growthbook_remake]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[growthbook_remake]
@douserid int,
@idlist varchar(100)
AS

exec ('update gbapp..archives_apply set status=0 where archivesapplyid in ('+@idlist+')')




GO
