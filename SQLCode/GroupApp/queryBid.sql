USE [HealthApp]
GO
/****** Object:  StoredProcedure [dbo].[queryBid]    Script Date: 2014/11/24 23:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[queryBid]  
@uid int  
AS  
   declare @theTerm varchar(100)  

   declare @p int,@kid int  
	select @kid = kid from BasicData..[user] where userid = @uid
 
   --当前学期  
	

   select @theTerm = dbo.getTerm_New(@KID,GETDATE())  
   select id,term,g.gname from HealthApp..BaseInfo  
   inner join BasicData..[user_class] uc on uc.userid = @uid  
   inner join BasicData..class c on c.cid = uc.cid  
   inner join BasicData..grade  g on g.gid = c.grade   
    where uid=@uid and term=@theTerm  
GO
