USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[rep_payinfo_list]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rep_payinfo_list]
@privince int
,@city int
,@area int
,@payftime datetime
,@payltime datetime
,@urgesuid varchar(100)
,@payby varchar(100)
,@parentsfees varchar(100)
 AS 

SELECT k.kid,k.kname,area,payby,p.paytime,p.uid,parentpay,p.remark,p.[money],p.isproxy,p.proxymoney from kinbaseinfo k
inner join payinfo p on  k.kid=p.kid



GO
