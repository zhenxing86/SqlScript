use payapp
go

-------------���߽ɷѼ�¼-------------
select uc.cname,uc.account,uc.userid,uc.name,case when PayType=1 then '֧����' else '΢��' end PayType,crtdate,*
--select uc.cname,uc.name,crtdate
from payapp..sgs_pay_record s 
 inner join BasicData..user_child uc on s.userid=uc.userid
where s.kid=34357 and crtdate>='2018-09-01' and s.status=1 and name='ղ����'



-----------------------------------------�����ں�ɨ��֧�����ķ����START��-----------------------------------------------------
--��ά��֧��  ���ķ����
http://payweixin.pc118.zgyey.com/sgspay/productPagev5.aspx?kid=37585

1.37585 ����ʤ���׶�԰
2.2018��9��19��-2018��9��30��
3.������Ч����2019��2��10��
4.������150Ԫ/ѧ�� @л���� Сл�鷳����һ����ά��лл��

[34357]�����л������д��������ʵ���׶�԰
1.�鷳��ͨһ�����԰�����߽ɷѣ�2.�ɷѽ�250Ԫ/ѧ�ڣ�3.���νɷѵķ�����Ч��Ϊ���ӽɷѵ�����2019��7��1��


--1) ���ý�����Ч��
--expirestype  0����Ȼ�£�1��������ʱ�䣬 2�������ޣ�һ���Խɷ�
insert into payapp..fees([from],kid,fee_name,fee_des,expires,fee_money,deletetag,feetype,expirestype,expiresremark,expiresenddate,fee_kid,pay_bgndate,pay_enddate)
values('WX_JSAPI',0,'��ͯ���ö��ݵĽ��ķ����','',4,150,1,4,0,'һѧ��','2019-02-10 23:59:59',37585,'2018-09-19','2018-10-30')

select * 
--update f set deletetag=0
--update f set expirestype=0,fee_name='��ͯ���ö��ݵĽ��ķ���ѣ�150Ԫ������������ѣ�100Ԫ��',fee_des='',expiresremark='һѧ��',fee_money=250,expiresenddate='2019-07-01 23:59:59',pay_bgndate='2018-09-14',pay_enddate='2018-09-14'
--update f set expirestype=0,fee_name='��ͯ���ö��ݵĽ��ķ����',fee_des='',expiresremark='һѧ��',fee_money=250,expiresenddate='2019-01-20 23:59:59',pay_bgndate='2018-09-14',pay_enddate='2018-09-20'
from payapp..fees f where fee_kid=34357

--2����oss��̨���ײ����ã����Ķ���ͬʱ���ý�����Ч��

select * from ossapp..feestandard where kid=20581 

--�Զ���ͨvip ������¼
select * from ossapp..addservice_vip_Add_auto_update_log l
 inner join ossapp..users u on l.douserid=u.id where kid=20581
 
select * from payapp..sgs_pay_record where kid=20581 and crtdate>='2018-07-04'
select * from payapp..user_fees where kid=20581 and crttime>='2018-07-04'
select * from payapp..fees where feetype=4 kid=20581 and crttime>='2018-07-04'

select * from payapp..user_open_record where kid=20581 and crtdate>='2018-07-04'

select *       
 from ossapp.dbo.feestandard f                         
inner join [PayApp].[dbo].[fees] s on s.fee_id=f.sgsfeeid and s.deletetag=1 and s.kid=f.kid and s.[from]='ATS' and feetype=3                       
where f.kid=20581 and f.deletetag=1 

--PayApp.[dbo].payapp_fees_Save     


-------���ķ�����Ч�����ã��� '2018-03-01' ��Ϊ '2018-09-01'��------
select * 
--update s set expiresenddate='2018-09-01 00:00:00.000'
from ossapp..read_set where kid=28277

select * 
--update f set expiresenddate='2018-09-01'
from ossapp..feestandard fd inner join payapp..fees f on fd.sgsfeeid=f.fee_id and f.feetype=3   
where f.expiresenddate='2018-03-01'

select * 
--update rs set expiresenddate='2018-09-01'
from ossapp..read_set rs inner join ossapp..feestandard fd on rs.feeid=fd.ID   
where rs.expiresenddate='2018-03-01'



 
-----------------------------------------�����ں�ɨ��֧�����ķ����END��-----------------------------------------------------

select * from BasicData..User_Child where kid=28277 and name like '%л%'




--------------------------------------��԰�����-----------------------------------------------------
--http://payweixin.pc118.zgyey.com/sgspay/productPagev8.aspx?kid=23713&feetype=6
--payapp..sgs_fees_GetModelEx @kid=23736,@feetype=6  
--1) ��oss��̨���������ͻ��շѡ����ײ����á����󶨣�ƽ̨�����   ���Ѿ������޸��������������Ҫ�Զ������ݣ���Ҫ �ڶ����޸ģ�
--2���޸�����
update f set html_remark=N'<div>
        	<p class="text-a1">'+k.kname+'�������רҵ���׶���������ƽ̨--�й��׶�԰�Ż������к�����Ϊ�ҳ��ṩ���·���</p>
            <p><img src="/Content/images/a1.jpg"/></p>
            <p class="text-a1">���ڷ��ͼ�԰���š�ʹ�óɳ�����������μ���Դ�ȸ������ֱ�ӳɱ�����Ա�ɱ��Ĵ��ڣ��ҳ�ʹ������������Ҫ���й��׶�԰�Ż���֧��<span style="color:#E70003">'
            +CAST(f.fee_money as varchar)+'Ԫ/'+f.expiresRemark
            +'</span>�ĳɱ�������ã�ϣ����λ�ҳ���������֧��</p>
        	'--<p class="text-a1" style="color:#E70003"><strong>�ɷ�ʱ�䣺</strong>10��13��14�գ����塢������</p>
        +'</div>'
--select *
from payapp..fees f inner join BasicData..kindergarten k on f.kid=k.kid
where f.kid=23713

--��������޸��ײ���Ч�ڣ�ֱ����oss��̨�޸ļ���



-------------------------------------VIP �ɷ�ʱ��������----------------------------------------------

select * from ossapp..users where id=132  --165 --148
select * from PayApp..user_fees where  enddate='2017-03-01' and crttime>='2017-01-01' 
select * from ossapp..addservice where ltime='2017-03-01' and dotime>='2017-01-01' and describe='��ͨ'
select * from ossapp..addservice_status_log where kid=14979 and userid=2157820

---------------------------------------vipʱ���޸�------------------------------
select * 
--update uf set enddate='2017-09-01'
from PayApp..user_fees uf where enddate='2017-03-01' and crttime>='2017-01-01' and kid=14979

select * 
--update uf set enddate='2017-09-01'
from PayApp..sgs_pay_record uf where enddate='2017-03-01' and crtdate>='2017-01-01' and status=1 and kid=14979

select * 
--update a set ltime='2017-09-01'
from ossapp..addservice a where ltime='2017-03-01' and dotime>='2017-01-01' and describe='��ͨ' and kid=14979


payapp..sgs_GetUserFeeInfo 653612,'sgs'
payapp..sgs_GetUserFeeInfo 2337886,'ats'      
    
----------------------------�ɷѣ�û��vip��¼��ѯ------------------------
select k.kname,r.kid,uc.cname,uc.userid,uc.name username,r.crtdate,enddate,r.fee_id,r.fee_name
--select *
--select count(1)
 from PayApp..sgs_pay_record r
inner join BasicData..kindergarten k on k.kid=r.kid
inner join BasicData..User_Child uc on r.userid=uc.userid
where  r.crtdate>='2016-07-01' and r.status=1 and r.userid>0
and not exists(select 1 from ossapp..addservice a where a.uid=r.userid and
a.deletetag=1 and a.describe='��ͨ' and ltime>'2016-09-01') --  and r.userid=1580500
order by r.kid,uc.cname,uc.name

select * from ossapp..addservice where uid in (1580500)
--------------------------------------------------------------------

--���򳿼쿨
select * from payapp..[sgs_pay_record] where fee_id=153
select userid,COUNT(1) from payapp..[sgs_pay_record] where feetype=5 and kid=403 and status=1 
group by userid 
having COUNT(1)>1

select  uc.userid,uc.cname,uc.account,uc.name,r.orderno,r.crtdate,ROW_NUMBER() over( PARTITION by uc.userid order by uc.userid) rows
 from payapp..[sgs_pay_record] r
inner join BasicData..User_Child uc on r.userid=uc.userid
 where r.kid=25294 and status=1
 order by uc.userid
 
--�༶���������ɷ�ʱ�䣬
select u.cname �༶,u.name ����,uf.crttime �ɷ�ʱ�� from payapp..user_fees uf
 inner join basicdata..[USER_child] u
  on uf.userid =u.userid 
  where u.kid=14979
  order by cname,u.name

select c.cname �༶,u.name ����,uf.crttime �ɷ�ʱ��,uf.*
 from payapp..user_fees uf
 inner join basicdata..[USER] u
  on uf.userid =u.userid 
 left join BasicData..user_class uc
  on u.userid = uc.userid
 left join basicdata..class c on c.cid=uc.cid
  where uf.kid=29048 
  order by cname,u.name
  
--��ѯ�ظ��ɷ�
  select userid,count(1) from payapp..sgs_pay_record
   where kid= 32833 and status=1 and crtdate>='2017-01-01'
   group by userid having count(1)>1
   
--֧�������û���
select u.name ����,uf.crttime �ɷ�ʱ��,u.cname �༶,uf.*
 from payapp..user_fees uf
 inner join basicdata..[USER_child] u
  on uf.userid =u.userid 
  where u.kid=29048 and crttime>='2016-3-1' and crttime<='2016-11-1'
  order by cname,u.name

--������¼
select c.cname �༶,u.name ����,uf.crtdate �ɷ�ʱ��,uf.*
 from payapp..sgs_pay_record uf
 inner join basicdata..[USER] u
  on uf.userid =u.userid 
 left join BasicData..user_class uc
  on u.userid = uc.userid
 left join basicdata..class c on c.cid=uc.cid
  where uf.kid=29312 
  order by cname,u.name
  
--΢��֧��û�а��û���
  select case when u.kid=0 then '��԰' else '' end  ״̬ ,isnull(c.cname,uf.tel) �༶,isnull(u.name,uf.username) ����,uf.crtdate �ɷ�ʱ��,uf.fee_name �ײ�,uf.*
 from payapp..sgs_pay_record uf
 left join basicdata..[USER] u
  on uf.userid =u.userid 
 left join BasicData..user_class uc
  on u.userid = uc.userid
 left join basicdata..class c on c.cid=uc.cid
  where uf.kid=29312 and uf.crtdate>='2017-01-1'
   and uf.crtdate<='2018-01-1' and uf.status=1
  order by cname,u.name

----------------------------------------------------------------------
select u.cname �༶,u.name ����,r.actiondatetime �ɷ�ʱ��,r.plus_amount ��ֵ���
 from payapp..order_record r
 inner join BasicData..[USER_child] u
  on r.userid = u.userid  
   where u.kid = 14979 and status=1 and r.[from] ='' and r.actiondatetime>='2015-06-01'
   order by cname,u.name

--[34148]�����к��������������׶�԰������԰
--�ײ�2 OSS�����ݺ�����֧�������ݲ�һ��
select *  
from payapp..sgs_pay_record r
where kid=34147 and deletetag=1 and status=1
 and exists(select 1 from ossapp..addservice a
  where  a.uid=r.userid and a.deletetag=1 and a.describe='��ͨ' and ltime>'2016-09-01' and a.a1=1202)
and exists (select 1 from BasicData..User_Child uc where uc.userid=r.userid)

select r.kid order_kid,u.kid,isnull(c.cname,'') cname,isnull(u.name,'') username,r.fee_money,r.PayType,r.crtdate,r.orderno,r.fee_name
--update r set kid=u.kid                   
 from PayApp..sgs_pay_record r    
 left join BasicData..[user] u on u.userid = r.userid     
 left join BasicData..[user_class] uc on uc.userid=u.userid   
 left join BasicData..[class] c on c.cid=uc.cid         
  where r.kid=34147 and r.crtdate>='2016-09-01' and r.crtdate<='2017-09-01' and r.status=1 and feetype in (3,4)
   and u.kid<>34147  --34147
   
select r.kid order_kid,u.kid,isnull(c.cname,r.cname) cname,isnull(u.name,r.username) username,
isnull(r.tel,'') tel,r.fee_money,r.PayType,r.crtdate,r.orderno,r.fee_name
--update r set kid=u.kid                   
 from PayApp..sgs_pay_record r    
 left join BasicData..[user] u on u.userid = r.userid     
 left join BasicData..[user_class] uc on uc.userid=u.userid   
 left join BasicData..[class] c on c.cid=uc.cid         
  where r.kid=31717 and r.status=1 --and r.crtdate>='2016-09-01' and r.crtdate<='2017-09-01'  --and feetype in (3,4)
   and u.kid<>31717  --34147
 

select a.kid,r.*  
from payapp..sgs_pay_record r
 inner join ossapp..addservice a
  on a.uid=r.userid and a.deletetag=1 and a.describe='��ͨ' and ltime>'2016-09-01' and a.a1=1202
where r.kid=34148 and r.deletetag=1 and r.status=1
and exists (select 1 from BasicData..User_Child uc where uc.userid=r.userid)
order by a.kid,r.orderid


------------------------------------------------------------------------------------------
exec ossapp.[dbo].[addservice_vip_GetListTag] --1,1,7599,-1,'','','','-1','-1','','',''          
 @page =1          
,@size=1000       
,@kid=34148
,@txtcid=-1         
,@txtname=''          
,@txtaccount =''         
,@txttel =''         
,@txtispay ='-1'       
,@txtisopen ='1'
,@txtftime =''
,@txtltime =''
,@txtiskin ='1'
,@p1 =1202  --
-----------------------------------------------------------------------------
 
 
 --��ά��֧��  IEEP�����׶�����ѧϰ֮��IEEP������
http://payweixin.pc118.zgyey.com/sgspay/productPagev7.aspx?kid=1 --���Ϸֹ�˾  --���ϳ���   bid=1
http://payweixin.pc118.zgyey.com/sgspay/productPagev7.aspx?kid=2 --���Ϸֹ�˾  --���Ϸֹ�˾ bid=47
http://payweixin.pc118.zgyey.com/sgspay/productPagev7.aspx?kid=3 --����                   bid=0
http://payweixin.pc118.zgyey.com/sgspay/productPagev7.aspx?kid=4 --ɽ���ֹ�˾  --�������� bid=5 
http://payweixin.pc118.zgyey.com/sgspay/productPagev7.aspx?kid=5 --��ͷ�ֹ�˾  --���Ǵ��� bid=40
ɽ��һ����ͷ�ֹ�˾


--expirestype  0����Ȼ�£�1��������ʱ�䣬 2�������ޣ�һ���Խɷ�
insert into payapp..fees([from],kid,fee_name,fee_des,expires,fee_money,deletetag,feetype,expirestype,expiresremark,expiresenddate,fee_kid,pay_bgndate,pay_enddate)
values('JSAPI',0,'IEEP�����׶�����ѧϰ֮��','',4,1980,1,4,0,'һѧ��','2017-09-01 23:59:59',5,'2017-01-01','2017-01-01')

select *
--update f set fee_name='IEEP�����׶�����ѧϰ֮��',fee_money=1
 from payapp..fees f where fee_kid=2 and [from]='JSAPI'
 
select *
--update f set bid=case when fee_kid=1 then 1 when fee_kid=2 then 47 when fee_kid=4 then 5 when fee_kid=5 then 40  else 0 end
--update f set bid_name=case when fee_kid=1 then '���Ϸֹ�˾' when fee_kid=2 then '���Ϸֹ�˾' when fee_kid=3 then '����' when fee_kid=4 then 'ɽ���ֹ�˾' when fee_kid=5 then '��ͷ�ֹ�˾' else '' end
 from payapp..fees f where fee_kid in(1,2,3,4,5) and [from]='JSAPI'
 
select * from ossapp..users where bid=1
select * from ossapp..agentbase where name like '%���ϳ���%' 
-------------------------------------------------------------------------------------

select * 
--update r set status=0
--update r set fee_money=1
--delete r
from sgs_pay_record r where crtdate>='2017-05-23' and [from]='JSAPI' and status=1 and orderid=10309

select * from ossapp..users where bid>0

-----------------------------------------------------------------------
ʱ���������ҡ������������/�ɳ�����(�������107��kmappʱ����Ȩ�޿���.sql��)

---------------------------------------
select * from PayApp..sgs_pay_record where userid=2358989 and crtdate>='2017-09-01'

'13409750310'
payapp..sgs_GetUserFeeInfo 2358989

http://sgs.pay.zgyey.com/pay/index?kid=403&client=1&appver=4.1&uid=2358989&hxuid=2358989a0&role=2&feeid=213&key=34253ydfg675hr56
http://sgs.pay.zgyey.com/alipayto/CreateOrder?uid=2358989&feeid=213&from=SGS&timestamp=&key=34253ydfg675hr56

kid=403&client=1&appver=4.1&uid=2358989&hxuid=2358989a0&role=2&feeid=213&key=34253ydfg675hr56

select *from basicdata..[user] where account='txzx101'