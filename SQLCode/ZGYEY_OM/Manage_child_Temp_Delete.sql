USE [ZGYEY_OM]
GO
/****** Object:  StoredProcedure [dbo].[Manage_child_Temp_Delete]    Script Date: 2014/11/24 23:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Manage_child_Temp_Delete]
@kid int
,@id int 
 AS 
delete  [ZGYEY_OM].[dbo].[ChildTemp]
where [kid]=@kid and (@id=-1 or id=@id)


GO
