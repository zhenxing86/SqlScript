USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[zz_counter_GetList]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[zz_counter_GetList]
 AS 

begin
	select userid,kid,fs,ks,hlfy,pz,fx,hy from mcapp..zz_counter
end







GO
