use MqktApp
go


select t.name ģ��, bc.cname ��Ȥ��, uc.cname ��̨�༶,uc.name ����,answers ��
from mqktapp..theme_answer a
 inner join BasicData..User_Child uc on a.userid=uc.userid
 inner join mqktapp..theme t on t.id=a.themeid
 inner join mqktapp..base_class bc on bc.mqcid=t.mqcid
 where uc.kid=31650
 
 
 select bc.cname ��Ȥ��,t.*
from mqktapp..theme t
 inner join mqktapp..base_class bc on bc.mqcid=t.mqcid
 where t.kid=31650
 
select bc.*,d.* 
--update d set deletetag=1
from mcapp..driveinfo d
 inner join mqktapp..base_class bc on bc.mqcid=d.mqcid
  where bc.kid=31650 and bc.mqcid>0 and d.deletetag=0
 
 select * 
 --update bc set cname=''
 from mqktapp..base_class bc where kid=31650 and cname='С�˹�'

update bc set cname='�����Ӱ��' from mqktapp..base_class bc where kid=31650 and cname='С�˹�'
update bc set cname='��������' from mqktapp..base_class bc where kid=31650 and cname='��Ȥ������'
update bc set cname='����ͼ���' from mqktapp..base_class bc where kid=31650 and cname='�׶�԰ͼ���'

update bc set cname='���ﱨ' from mqktapp..base_class bc where kid=31650 and cname='����ͼ���'

���ﱨ
 
1 �����Ӱ��  2 ��������  3 ����ͼ���

2	С�˹�
3	��Ȥ������
4	�׶�԰ͼ���
5	�������ŵ
6	��������
7	��Ȥ������

