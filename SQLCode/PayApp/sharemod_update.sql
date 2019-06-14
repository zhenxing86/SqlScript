USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[sharemod_update]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		于璋
-- Create date: 2014-06-11
-- Description: 阅读计划结算分成金额配置
-- =============================================
create PROCEDURE [dbo].[sharemod_update]
@kid int,
@ShareMod numeric(9,2)

AS
BEGIN
	SET NOCOUNT ON;
  update k set k.ShareMod = @ShareMod
    from BasicData..kindergarten k
   where kid = @kid
END



GO
