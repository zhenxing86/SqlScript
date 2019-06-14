USE HealthApp
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: ��ȡĳ��ĳ�յĳ�����  
-- =============================================  
alter PROCEDURE getCheck
	@bid int,
	@day DATE  
AS
BEGIN  
	SET NOCOUNT ON
	;WITH	CET0 AS
	(
		SELECT stuid,zz,CASE WHEN tw >= 37.8 And ',' + isnull(zz,'')+',' like '%,1,%' THEN '����ƫ��' ELSE '����' END tw
			FROM mcapp.dbo.stu_mc_day 
			where CheckDate = @day
	)
select sm.zz as result, CASE WHEN ISNULL(sm.zz,'') = '' THEN 0 else 1 end [status], sm.tw 
	FROM HealthApp.dbo.BaseInfo bi 
		inner join CET0 sm 
			on bi.id = @bid 
			and bi.[uid] = sm.stuid 
END      
GO      
      