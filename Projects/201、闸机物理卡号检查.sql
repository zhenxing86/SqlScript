

select * 
--update c set gate_card='4029093738'
from mcapp..cardinfo c where card='4029093738'
select * from mcapp..cardinfo where card='4029096378'

;with cet as(
select kid,gate_card,COUNT(1) cnt from mcapp..cardinfo c --where kid =34114
where gate_card is not null
group by kid,gate_card
having COUNT(1)>1
)
select c.crtdate,c.Card,t.*,c.* from mcapp..cardinfo c
 inner join cet t on c.gate_card=t.gate_card
 order by c.kid,c.gate_card
 
 
 --1188312842��2759496106���鷳�������ſ�������ͬ����[32833]�����ж����������׶�԰�������ſ���ʦ�Ѿ���ͨ��С�������ˣ�����ˢ����բ��
select * from mcapp..cardinfo where gate_card='1188312842'
select * from mcapp..cardinfo where gate_card='2759496106'

select min(id) from mcapp..gate_pin where usest=0
select * 
--update p set usest=1
 from mcapp..gate_pin p where usest=0 and id=18562

select *
--update c set gate_card='2759496106',gate_pin=18562
 from mcapp..cardinfo c where card='2759496106'
 
 
--�����û�
insert into mcapp..gate_command(kid,sn,cmdtype,cmdcontent,priority)
 select t.kid,d.sn,'DATA UPDATE','DATA UPDATE user cardno='+gate_card+CHAR(9) + 'pin='+ cast(t.gate_pin as varchar) +CHAR(9)
 +'password='+CHAR(9)+'group=0'+CHAR(9) + 'starttime=0'+ CHAR(9)+ 'endtime=0'+ CHAR(9)+ 'name='+ CHAR(9)
 + 'superauthorize=0'+ CHAR(9)+ 'disable=0',0
 from mcapp..cardinfo t
  inner join mcapp..gate_device d on t.kid=d.kid and d.deletetag=1 
 where t.card in('1188312842','2759496106')

--����Ȩ��
insert into mcapp..gate_command(kid,sn,cmdtype,cmdcontent,priority)
select t.kid,d.sn,'DATA UPDATE','DATA UPDATE userauthorize pin='+cast(t.gate_pin as varchar)+CHAR(9)
 +'authorizetimezoneid='+cast(g.TimeZoneID as varchar)+CHAR(9)+'authorizedoorid='+cast(g.authorizedoorid as varchar),0
 from mcapp..cardinfo t
  inner join mcapp..gate_device d on t.kid=d.kid and d.deletetag=1 
  inner join mcapp..gate_timezones_device g on d.sn = g.sn
 where t.card in('1188312842','2759496106')