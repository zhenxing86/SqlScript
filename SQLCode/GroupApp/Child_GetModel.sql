USE [GroupApp]
GO
/****** Object:  StoredProcedure [dbo].[Child_GetModel]    Script Date: 2014/11/24 23:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Child_GetModel] 
@userid int
as 
select 
u.userid,[name],birthday
,case when gender=2 then '女' else '男' end sex
,nation,mobile,email,address
,(select title from BasicData..Area where ID=privince) privince
,(select title from BasicData..Area where ID=city) city
,istip
,(select title from BasicData..Area where ID=residence) residence
,exigencetelphone,fathername,mothername,favouritething,fearthing,favouritefoot,footdrugallergic,vipstatus

 from BasicData..[user] u  
inner join  BasicData..child c on  c.userid=u.userid 
where u.userid=@userid

GO
