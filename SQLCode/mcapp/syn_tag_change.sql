USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[syn_tag_change]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












------------------------------------
--syn_tag_change 12511,2,'001251101'
------------------------------------
CREATE PROCEDURE [dbo].[syn_tag_change]
@kid int,
@querytag int,
@devid varchar(20)
 AS 
	
--update querycmd set status=0,syndatetime=getdate() 
--where devid=@devid and querytag=@querytag and status=1











GO
