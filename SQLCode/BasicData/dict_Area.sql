USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[dict_Area]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[dict_Area]
 @Superior int
 
 AS 

select 0,ID,Title,Code,Superior,[Level],1 from basicdata..area
where Superior=@Superior


GO
