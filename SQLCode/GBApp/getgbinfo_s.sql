USE [GBApp]
GO
/****** Object:  StoredProcedure [dbo].[getgbinfo_s]    Script Date: 2014/11/24 23:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[getgbinfo_s] 
@cid int
 AS 	

select gb.gbid
           ,c.child_name
            from growthbook gb left join homebook hb on gb.hbid=hb.hbid 
left join childreninfo c on gb.gbid=c.gbid
where 
 hb.term='2013-1' 
--and gb.userid=384921
and hb.classid=@cid
order by c.child_name


--select * from basicdata..class where kid=14979











GO
