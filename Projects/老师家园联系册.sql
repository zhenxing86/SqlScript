/*
m.ls.jylx.zgyey.com
���Խű�

��ʦ��account='ls' and userid=560725 and cname='��һ��' and name='��ٻ'
ѧ����account='jz' and userid=295767 and cname='��һ��' and name='������'
*/

/*����Ҫ�㣺

1��ѧ�ڼ��ͼ�İ桢���ı�
select * from ngbapp..moduleset where kid=12511 and term='2014-1'
2��ģ�壺�������ɷѺ�δ�ɷѣ���ʾ7��ģ�壩
select * from ossapp..kinbaseinfo where status='�����ɷ�' and kid=12511

*/
--������Ϣ
select c.cname,u.usertype,u.* 
 from basicdata..[user] u
  inner join  basicdata..[user_class] uc 
   on u.userid=uc.userid 
  inner join basicdata..class c
   on uc.cid= c.cid
 where uc.cid=46144 and usertype = 1
 
 select *from basicdata..[user]where account='jz'
select *from basicdata..[User_Child] where account='jz'

ngbapp..GetGrowthBook 13828320,'qmzp'

SELECT *  
  FROM growthbook         
  WHERE gbid = 13828320    