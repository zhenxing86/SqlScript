--[14909]�����д����ʿ�׶�԰���԰�ĳɳ�������������඼û����д���ݡ���ʦ˵�б༭�����鷳��æ���������԰��û�������

http://hbapp.up139.zgyey.com/AdminDefault.aspx

select * from basicdata..class where kid=14909 and grade=37
select * from basicdata..class_all where kid=14909 and grade=37


1151427&cid=122008

getgrowthbookv2

select * from ngbapp..homebook where kid=14909 and term='2018-0'
select * from ngbapp..homebook where hbid=1151427


 
 --4����������,�����Ӱ���ֹ���Ʒ���ȳɳ��ռ�ģ�������
select * from diary d 
inner join growthbook g on d.gbid=g.gbid
inner join page_public pp on pp.diaryid = d.diaryid    
 where g.kid=14909 and grade=37 and term='2018-0' 

 --5���׶��������ݼ�
select * from diary d 
inner join growthbook g on d.gbid=g.gbid
inner join page_cell pc on pc.diaryid = d.diaryid  
 where g.kid=14909 and grade=37 and term='2018-0'

--7��ÿ�½������ݼ�
select * from diary d 
inner join growthbook g on d.gbid=g.gbid
inner join page_month_sec pm on pm.diaryid = d.diaryid   
 where g.kid=14909 and grade=37 and term='2018-0'

--9���¹۲������� 
select * from diary d 
inner join growthbook g on d.gbid=g.gbid
inner join page_month_evl pm on pm.diaryid = d.diaryid   
 where g.kid=14909 and grade=37 and term='2018-0'
                            
--10�������Ӱ�ֹ���Ʒ
select * from tea_UpPhoto t inner join growthbook g
 on t.gbid=g.gbid
 where g.kid=14909 and grade=37 and term='2018-0'                  
     
    
select CommonFun.dbo.getCurrentTerm(0,getdate())