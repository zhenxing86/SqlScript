select SUM(case when zz like '%11%' then 1 else 0 end) �ҳ�����,
SUM(case when zz like '%10%' then 1 else 0 end) ��ҩ����, 
SUM(case when zz like '%9%' then 1 else 0 end) ��ָ��, 
SUM(case when zz like '%8%' then 1 else 0 end) �ص�۲�, 
SUM(case when zz like '%7%' then 1 else 0 end) ���۲�, 
SUM(case when zz like '%6%' then 1 else 0 end) ��к, 
SUM(case when zz like '%5%' then 1 else 0 end) Ƥ��, 
SUM(case when zz like '%4%' then 1 else 0 end) ������, 
SUM(case when zz like '%3%' then 1 else 0 end) ��������, 
SUM(case when zz like '%2%' then 1 else 0 end) ����
, SUM(case when replace(replace(zz,'11','A'),'10','B') like '%1%' then 1 else 0 end) ����ƫ��
from mcapp..stu_mc_day d where CheckDate>='2015-01-01'
and not exists(select * from kmapp..demo_kindergarten k 
where d.kid = k.kid)