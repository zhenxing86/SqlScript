USE [PayApp]
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentBeanCount]    Script Date: 2014/11/24 23:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCurrentBeanCount]
@userid int
 AS 


select re_beancount from user_pay_account where userid=@userid




GO
