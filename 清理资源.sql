--������Դ�ļ���
�༶��Ƭ  filepath filename
select * from classapp..class_photos  --1246401
�׶�԰��Ƭ filepath filename
select * from  kwebcms..cms_photo  --235543

�༶��ҳ�������� backgroundmusicpath(�������ļ���)  backgroundmusictitle��֪���ǲ����ļ���
AttachsFiles/200805/BackGroundMusic/����/bingo(Ӣ��).mp3
AttachsFiles/200805/BackGroundMusic/86/����/��Ģ����С����.wma
select * from  classapp..class_backgroundmusic where backgroundmusicpath like '%/%' ---8701

�׶�԰��Ƶ����������  filepath filename
select * from  kwebcms..cms_contentattachs v --25696
where v.createdatetime between '2007-1-1 10:00:00' and '2008-1-1 10:00:00' 

--�༶��Ƶ
select *from classapp..class_video
AttachsFiles/200805/VideoFiles/16/86/20061217025200/ 2006����.rm

--�׶�԰��Ƭ filepath filename
SmallPhoto/KWebAttachsFiles/2010/3/12/4873/YEZP/   b156f07c-9391-4df6-a288-93f96d8d8d9b.jpg
select * from  kwebcms..cms_photo where filepath like '%/'

select *from GBApp..video_temp 
select *from  gbapp..invalid_data_temp 
delete from  gbapp..invalid_data_temp


--���ͼƬ����Ƶ�����쳣��Ϣ
select *from gbapp..gberror_log 
where errTime between '2012-01-30 10:00:00' and '2013-01-30 10:00:00'
--��������ļ�������Ϣ
select *from gbapp..gberror_log 
where errTime between '2012-01-30 10:00:00' and '2013-01-30 10:00:00'


ice����  �����Խ���  ��ʵ��һ������  ice����








