

select * from ossapp.dbo.feestandard where kid=28267
select * from ossapp.dbo.feestandard f
 inner join ossapp..dict b on f.a1 = b.ID and b.name = '��������'
  --and b.deletetag = 1  
  where kid=28267


select a.*, c.cname as �༶,          
       u.name as ����,          
       u.mobile as �绰,          
       convert(varchar(10),a.ftime,120) as ��ʼʱ��,          
       convert(varchar(10),a.ltime,120) as ����ʱ��,          
       a.pname �ײ�,convert(varchar(10),a.dotime,120) ����ʱ��          
  from basicdata..[user] u          
 inner join basicdata..user_class uc on uc.userid=u.userid and u.usertype=0          
 inner join basicdata..class c on c.cid=uc.cid          
 inner join ossapp..addservice a on a.[uid]=u.userid and u.kid=a.kid          
 inner join basicdata..grade g on g.gid=c.grade          
 where            
  a.kid=28267 and a.uid=2497054       
  and a.deletetag=1          
  and a.describe='��ͨ'          
  and u.deletetag=1          
  and c.grade<>38--����Ҫ��ҵ���          
  order by g.[order] asc,c.[order] asc    
  
  select * from ossapp..dict where name = '�ײ�����'
  
  
  --select * from ossapp..dict where name = '��������'
  