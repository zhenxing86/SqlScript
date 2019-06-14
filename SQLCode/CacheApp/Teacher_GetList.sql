USE [CacheApp]
GO
/****** Object:  StoredProcedure [dbo].[Teacher_GetList]    Script Date: 08/10/2013 10:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE [dbo].[Teacher_GetList]
@kid int
AS
BEGIN
	   
	   select u.kid,d.did,dname,t.userid,u.name,title,post,education,employmentform,politicalface,kinschooltag 
	   from BasicData..teacher t
	   inner join BasicData..[user] u on u.userid=t.userid 
	   inner join BasicData..department d on d.did=t.did
	   where u.kid=@kid
	   
	   
END
GO
