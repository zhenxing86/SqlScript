58.63.227.54

--�ɳ���������



�����������
--select * delete from mcapp..stu_mc_day_raw where kid= 12511 and adate>='2014-04-12'
--select * delete from mcapp..stu_mc_day where kid= 12511 and adate>='2014-04-12'
--select * delete from mcapp..sms_mc where kid= 12511 and sendtime>='2014-04-12'

gbapp
select * from gbapp..archives_apply where kid =12511 and userid=295765
ArchivesApply_GetList_By_Status

update gbapp..archives_apply set gbid = 2151,term ='2013-1',flag=1,status=0,url=''
where archivesapplyid=4535

ngbapp
GetGrowthBook 2151

--���ݻָ�

2839	123	97	�а�	46144	��һ��	12511	������Ĵָ�׶�԰	295765	־��	2013-02-03 14:18:12.020	2013-02-03 14:20:58.747	18028633611	Foreword,GartenInfo,ClassInfo,KidInfo,FamilyInfo,Cell,LifePhoto,WorkPhoto,Section,Video,ClassAlbum,Summary	2012-1	12511������Ĵָ�׶�԰/�а�_��һ��/־���ĳɳ�����.zip	3	1	0
--ѧ��

exec AppLogs..VarLogQuery	
	@DbName  = 'mcapp',
	@TbName  = 'cardinfo', 
	@Item  = 'kid', 
	@value  = '8248', 
	@kid  = 8248,
	@bgntime  = '2013-10-13',
	@endtime  = '2013-10-17',
	@DoType  = -1--��0������2ɾ����1�޸ģ�-1���ޣ�  










--OSS��̨����ά������V1.0  2013-06-07 ������
use mcapp
SELECT O1.devid,O1.adate,O1.kid,O1.[status]
FROM mcapp..runstatus O1 JOIN (
SELECT ROW_NUMBER() OVER(PARTITION BY devid ORDER BY adate DESC) AS RowNumber,*
FROM mcapp..runstatus AS OT
) AS O2
ON O1.adate = O2.adate
WHERE O2.RowNumber = 1 and O2.kid = 12511
order by O2.devid desc


select r.devid,r.kid,rs.adate,rs.status 
from mcapp..runstatus r
CROSS APPLY (
SELECT TOP(1)* FROM mcapp..runstatus r2
where r.devid=r2.devid  order by adate desc) as rs





