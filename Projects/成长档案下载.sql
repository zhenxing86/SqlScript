
 29525����������ʵ���׶�԰/�а�_��3��/½�����ĳɳ�������ѧ��.zip
[14933]ɽ��ʡũҵ��ѧԺ�׶�԰��һ������������ࡢ201601��201602��201603�࣬��û�д���������һѧ�ڣ�����������Ͽ��ŵ����Ȱ�����һѧ��������

select * from gbapp..archives_apply where userid=1515961
select * from gbapp..archives_setting where kid=14933 
select * from gbapp..archives_setting where kid=18289


select *
--update s set status=0
 from gbapp..archives_setting s where kid=14933 and id=165



SELECT hbid,class_teacher,m_class_photo,class_notice,net,updatetime FROM [classinfo] WHERE hbid=@hbid

-----------------�ɳ���������---------------------------- 
gbapp..getclassinfo 37 125474
gbapp..getgbinfoV2

ngbapp..GetGrowthBookV2 523463811

http://lngb.zgyey.com/ngb/getOfflineBookContent.ashx?gbid=13275690

select * from BasicData..class_all where kid=14933 and term='2017-1' and deletetag=1 and grade=37
select uca.cid,* from ngbapp..growthbook g
 inner join BasicData..[user] u on g.userid=u.userid 
 inner join BasicData..user_class_all uca on u.userid=uca.userid and uca.term='2017-1'
 where --kid =14933 -- and g.term='2017-1' AND
  uca.cid=121703
  
  g.gbid=314126553


--------------------�༶�������-------------------------
ngbapp..GetKinClassInfo 

 select k.kname,ca.cname   
  from BasicData..class_all ca     
    inner join BasicData..kindergarten k  
     on ca.kid = k.kid  
    where ca.deletetag = 1  
     and ca.cid=57681  
     and ca.term='2015-0' 
       
ngbapp..GetClassAlbumList 
ngbapp..GetClassPotosList  
 

--------------------�༶��Ƶ����--------------------------
classapp..[class_video_GetList] 

SELECT  t1.videoid,t1.userid,t1.classid,t1.kid,t1.title,'',t1.filename,t1.filepath,t1.filesize,        
    t1.viewcount,t1.commentcount,t1.uploaddatetime,t1.author,t1.coverphoto,'' as classname,t1.weburl,t1.videotype,t1.net        
  FROM classapp..class_video t1
         
  where kid=14934 and t1.status=1 and videotype=  2   
   and uploaddatetime>='2015-07-01' -- and uploaddatetime<= @end and weburl='' and t1.filename like '%.flv'        
  order by t1.videoid desc  

SELECT  distinct classid      
  FROM classapp..class_video t1
  where kid=14934 and t1.status=1 and videotype=  2   
   and uploaddatetime>='2015-07-01' -- and uploaddatetime<= @end and weburl='' and t1.filename like '%.flv'        
  order by t1.videoid desc  
  
--2015-07-01�����ǵ���Ƶ�ϴ�����cc��Ƶ�Ʒ��������ˡ�cc�Ǳ��и����ƣ�pc��û�п���������Ƶ�Ľӿڵ��ã�ֻ�����ֻ��˲ſ��������ؽӿڡ�
--�����Ҫ��¼cc�ṩ����Ƶ�����̨��������Ƶ videoidȥ������Ƶ�ļ���ͬʱ������ͼ����������

--�����Ƶ�Ƚ϶�ģ���Ҫcc�Ǳ�Э������Ƶ��ȡ�������ŵ�qq���̣�Ȼ�������ٴ�����ȡ�����ŵ����ǵķ�������


----------------------��԰�û��ĳɳ�����------------------------------------
select g.gbid,g.userid,uc.* from ngbapp..growthbook g 
left join BasicData..leave_user_class uc on g.userid=uc.userid      
   left join BasicData..class c on uc.cid=c.cid      
   where c.kid is null and g.cname is null
   
------------------ȫ԰��������-------------------------

23269 ��̨���׶�԰�����쿪ʼ���а࣬��ࣨԭ����С�࣬�аࣩ���ųɳ��������ء�����ʱ�ޣ�8��30��-9��10�գ�

select * from gbapp..archives_apply where kid = 23269 --userid=1515961 --

--�°�ɳ�����
declare
@kId int =29525,
@term nvarchar(6)='2016-0',
@handleTime datetime = getdate(),
@status int=0
insert into gbapp..archives_apply(gbid,gid,gname,cid,cname,kid,kname,
userid,username,applytime,handletime,telephone,modules,term,url,[status],deletetag,flag)
select gb.gbid,g.gid,g.gname,cls.cid,cls.cname,k.kid,k.kname,
u.userid,u.name,GETDATE(),@handletime,'1363243209','',gb.term,
'',@status,1,1
from BasicData..[user] u 
	inner join BasicData..user_class uc on uc.userid =u.userid
	inner join BasicData..class cls on cls.cid =uc.cid
	inner join BasicData..kindergarten k on k.kid=cls.kid
	inner join nGBApp..GrowthBook gb on gb.userid = u.userid 
	inner join BasicData..grade g on g.gid = cls.grade
where k.kid=@kid and u.usertype=0 and u.deletetag=1 and term=@term
and u.userid=1515961
-------------------------------------------------------------------





--�����
select * from BasicData..User_Child where kid=14933 and name in('�����','������','���Ϻ�','�ŭZ��','������','������','���ɼ','��ܰ��','�����','�����')

--ׯ�Ӻ�\�����U
select * from BasicData..User_Child where kid=14933 and name in('�����','�����','������','������','ׯ�Ӻ�','�����','������','�����','����','�����U')

--Ѧ��˶\������\����Դ
select * from BasicData..User_Child where kid=14933 and name in('Ѧ��˶','������','������','�պ���','���ͩ','������','��ϧ��','������','����Դ','��껱�')


select g.gbid,g.userid,uc.* from ngbapp..growthbook g 
left join BasicData..leave_user_class uc on g.userid=uc.userid      
   left join BasicData..class c on uc.cid=c.cid      
   where c.kid is null and g.cname is null
   
select * from BasicData..[User] u
left join BasicData..leave_user_class uc
 on u.userid=uc.userid 
 left join BasicData..class c on uc.cid=c.cid and c.kid=14933
 where (u.kid=0 or u.kid=14933) and 
 name in('Ѧ��˶','������','����Դ','�����U','ׯ�Ӻ�','�����')
 
 --392862,546635