[36365]������ܽ���׶�԰ [36364]�򴺵�һ�׶�԰@л���� 
�鷳���ҵ���������԰���׶����ϵ�ע��ʱ�䣬�����ı�����Ҫ�а༶��������ע��ʱ�䡣


select c.cname,u.name,u.regdatetime 
from BasicData..[user] u
 inner join BasicData..user_class uc on u.userid=uc.userid
 inner join BasicData..class c on uc.cid=c.cid
 where u.kid=36364

