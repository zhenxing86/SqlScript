[payapp].[dbo].[rep_read_getlist] 
��� 16:13:26
@bgndate date,
@enddate date
��� 16:13:47
�����kid	kname	֧����ʽ	�ܽ��

select uc.name,c.userid,c.cardno,a.describe,a.a7
from mcapp..cardinfo c
inner join BasicData..User_Child uc 
 on c.userid=uc.userid
left join ossapp..addservice a 
 on c.userid=a.uid 
 where c.kid=20361 and (a.a7<>806 or a.describe<>'��ͨ')

