USE [CacheApp]
GO
/****** Object:  StoredProcedure [dbo].[kin_baseinfo_GetModel]    Script Date: 08/10/2013 10:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[kin_baseinfo_GetModel]
@kid int
AS
select kid,kname from BasicData..kindergarten where kid=@kid
GO
