USE [ZGYEYCMS_Right]
GO
/****** Object:  StoredProcedure [dbo].[OrgJudge]    Script Date: 05/14/2013 14:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[OrgJudge]
@org_name nvarchar(30)
as
begin
declare @result int
     select @result=org_id from sac_org 
       where org_name=@org_name
if @result>0
return @result
else
return -1
end
GO
