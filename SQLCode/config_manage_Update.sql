USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[config_manage_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--GetList
------------------------------------
create PROCEDURE [dbo].[config_manage_Update]
@id int,
@syn int
 AS 
 update [ossapp].[dbo].[config_manage] set [syn]=@syn where id=@id





GO
