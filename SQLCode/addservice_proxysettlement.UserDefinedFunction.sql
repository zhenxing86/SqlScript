USE [ossapp]
GO
/****** Object:  UserDefinedFunction [dbo].[addservice_proxysettlement]    Script Date: 05/14/2013 14:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 根据KID获取是否已经代理结算
-- =============================================
CREATE FUNCTION [dbo].[addservice_proxysettlement]
(
	@kid int
)
RETURNS  int
AS
BEGIN

	DECLARE @pay int
	
	set @pay=@kid%2

	RETURN @pay

END
GO
