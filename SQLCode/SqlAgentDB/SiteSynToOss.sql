USE [SqlAgentDB]
GO
/****** Object:  StoredProcedure [dbo].[SiteSynToOss]    Script Date: 2014/11/24 23:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create Procedure [dbo].[SiteSynToOss] 

as

 if(exists(select 1 from kwebcms..synkid))
	begin
		exec ossapp..[init_kinbaseinfo]

		delete from kwebcms..synkid
	end


GO
