USE [edu_jy]
GO
/****** Object:  StoredProcedure [dbo].[init_gartenlist]    Script Date: 07/27/2013 18:00:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[init_gartenlist]
@areaid int
as

----��ʼ���׶�԰
--delete gartenlist

insert into gartenlist(kid,kname,sitedns,mingyuan,orderby,areaid,regdatetime,actiondate,telephone,qq,opentype,citytype,kintype,mastername,[address])
select k.kid,k.kname,s.sitedns,'',0,[dbo].[GetKinArea](k.privince,k.city,k.area,k.residence)
,k.actiondate,k.actiondate,k.telephone,k.qq,k.opentype,k.citytype,k.kintype,k.mastername,k.[address] 
		from BasicData..kindergarten k
			left join kwebcms..[site] s 
				on s.siteid=kid 
			left join gartenlist g
				on g.kid=k.kid
		where k.area=@areaid 
			  and g.kid is null
				


----��ʼ���׶�԰
--select * from gartenlist


--��ʼ������department
delete department

insert into department(did,dname,superior,[order],deletetag,kid,actiondatetime)
select did,dname,superior,[order],deletetag,d.kid,actiondatetime
from basicdata..department d
inner join gartenlist g on d.kid=g.kid


GO

