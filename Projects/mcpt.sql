--�豸���ͣ�0��һ�����1��ƽ�壬2��MU260,3������ǹ

--ʹ��һ���
select* from driveinfo
where devid like '%0[1-9]'

ID,�׶�԰���ƣ��豸��ţ�
select * from mcapp..driveinfo d 
where devid like '%0[1-9]'

select * from mcapp..driveinfo d 
where devid like '%0[1-9]'


select* from driveinfo
where devid like '%2[1-9]'

select* from driveinfo
where devid like '%[0,2][1-9]'

select* from driveinfo
where devid like '%[1,2][0]'

update driveinfo set devicetype=1
where devid like '%[1,2][0]'

update driveinfo set devicetype=1

where devid like '%[1,2,3][1-9]'
update driveinfo set devicetype=3
where devid like '%00'

select  * from ossapp..users where bid>0 ..[user]
where account 

DeviceStatusList2
Ex_heartbeat_Device2
Ex_Temperature_Device2
mc_sms_M
mc_sms_statistics_stu2
mc_sms_statistics_tea2
mc_upload_M

mc_sms_M2

saleinfo_GetListTag


[saleinfo_GetListTag]
[saleinfo_GetModel]
[saleinfo_Add]
[saleinfo_Update]
saleinfo_DeleteTag
kindergarten_Exist

mcapp stu_mc_day_getlist


  --��ҳ��ѯ            
 exec sp_MutiGridViewByPager            
  @fromstring = '#RESULT',      --���ݼ�            
  @selectstring =             
  ' kid, kname, Totalcnt, uploadcnt,CAST(1.0*uploadcnt/totalcnt as numeric(9,4)) uploadrate',      --��ѯ�ֶ�            
  @returnstring =             
  ' kid, kname, Totalcnt, uploadcnt,uploadrate',      --�����ֶ�            
  @pageSize = @Size,                 --ÿҳ��¼��            
  @pageNo = @page,                     --��ǰҳ            
  @orderString = ' uploadrate ',          --��������            
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����            
  @IsRowNo = 0 


mc_sms_statistics_stu
mc_sms_statistics_tea
--�ӷ�ҳ

DeviceStatusList
mc_upload_M
Ex_Temperature_Device
rep_mcdata_GetLowtempList

DeviceStatusList2
Ex_heartbeat_Device2
Ex_Temperature_Device2

driveinfo

CREATE TABLE #kid(kid int)              
  DECLARE @flag int        
  EXEC @flag = CommonFun.DBO.Filter_Kid_Ex -1,'','','','',134,'0'   
  
  	
  select @flag,* from #kid
  drop table #kid
  
  
  


SELECT * FROM ossapp..users u  
where  deletetag=1  
and ((u.roleid=8 and u.bid=0) or (u.roleid=9 and u.bid>0) or u.id=4)  

SELECT * FROM ossapp..users where account = 'yjhz20140806' 


account = 'yjcs2014'
password = '111111'

insert into ossapp..users
select 'yjhz20140806','F561D8D75CF97482C461B49E4880ED2B356F5D35',0,8,0,'Ӳ����������',mobile,qq,remark,GETDATE(),0,1,0
from ossapp..users
where id=135

update ossapp..users  set password = 'F561D8D75CF97482C461B49E4880ED2B356F5D35' where id=157

select *from ossapp..users where bid=0
czyeyadmin  13 

 select usertype,   
		 bid, duty, jxsid ,r.name  
	  from ossapp..users u  
	   inner join ossapp..[role] r   
		on u.roleid = r.ID  
	  where u.ID = 1 


8812	�����׶�԰	000881200	0	2014-03-27 10:54:22.710

select * from ossapp..kinbaseinfo
where kid in(
8812,
12422,
3638
)
