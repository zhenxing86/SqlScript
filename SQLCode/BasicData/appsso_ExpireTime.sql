USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[appsso_ExpireTime]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      mh
-- Create date: 
-- Description:	获取用户实体
-- Memo:		
*/
CREATE PROCEDURE [dbo].[appsso_ExpireTime]
	@userid int
AS
BEGIN

declare @usertype int,@kid int
select @usertype=usertype,@kid=kid from BasicData..[user] where userid=@userid


select @usertype=(CASE l.role_name WHEN '管理员' then 98 when '园长' then 97 when '老师' then 1 when '医生' then 1  end) 
	from KWebCMS..site_user su
		inner join KWebCMS_Right.dbo.sac_user u on u.user_id = su.UID
		inner join KWebCMS_Right.dbo.sac_user_role r on r.user_id = u.user_id
		inner join KWebCMS_Right.dbo.sac_role l on l.role_id=r.role_id
	where su.appuserid = @userid
	order by (CASE l.role_name WHEN '管理员' then 98 when '园长' then 97 when '老师' then 1 when '医生' then 1 end) asc

if(@usertype is null)
begin
select @usertype=usertype from [user] where userid=@userid
end
	
select COUNT(0) from ossapp..kinbaseinfo where kid=@kid and @usertype in(97,98) and datediff(dd,expiretime,getdate())>7 and @kid not in (
25311,
19293,
13247,
16375,
15859,
15520,
16408,
15569,
15875,
15857,
15983,
15854,
15856,
15850,
15863,
15864,
15865,
15866,
15867,
15868,
15869,
15870,
15871,
15872,
19307,
19308,
19309,
19310,
19311,
19312,
19314,
19316,
19317,
19318,
19319,
19320,
19294,
19296,
19297,
19298,
19300,
19301,
19302,
19303,
19304,
19305,
19288,
19289,
19290,
19291,
19292,
15851,
19284,
19285,
19940,
19942,
14932,
20245,
20247,
25376,
25345,
25344,
25342,
25336,
25333,
25334,
15926,
15924,
15936,
15562,
20014,
17768,
15922,
15522,
15561,
15521,
15526,
15548,
15545,
15942,
15923,
15925,
15927,
15928,
15929,
15930,
15931,
15939,
15940,
15941,
15557,
15546,
15560,
15527,
15523,
15529,
15542,
15543,
15544,
15547,
15550,
15556,
15937,
15938,
15549,
15551,
15552,
15553,
15558,
15559,
14448,
11579,
24181,
14388,
14387,
14378,
14337,
14344,
14393,
14968,
14670,
20155,
16333,
16349,
16331,
16332,
16326,
16336,
16337,
16353,
16354,
16355,
16356,
16357,
16358,
16346,
16347,
16348,
16341,
16342,
16343,
16365,
16366,
16367,
16368,
16369,
16362,
16363,
16364,
16340,
16344,
16345,
16350,
16351,
16352,
16359,
16360,
16361,
16327,
16328,
16329,
16330,
16334,
16335,
16338,
16339,
14154,
14391,
14392,
14375,
14353,
14357,
14370,
14371,
14376,
14379,
14380,
14381,
14400,
14439,
14354,
14355,
14356,
14358,
14347,
14348,
14715,
14394,
14396,
14272,
14398,
14401,
14291,
14766,
14954)


END




GO
