
-------------------------���顢����ʱ������---------------------------

--31991����Ϊ����
use AtsApp
go

insert into set_borrow_time(kid,gradeid,gradename,week,weekname,ftime,ltime,orderby,typeid,deletetag)
select 31446,gradeid,gradename,week,weekname,ftime,ltime,orderby,typeid,deletetag
 from set_borrow_time  where kid=31991
 



-------------------------��Ǯ������ʱ������---------------------------
use AtsApp
go
declare 
 @kid int =31446,    
 @book_money nvarchar(50)='200',    
 @book_duration nvarchar(50)='2'     
   
BEGIN    
    
    
declare @val varchar(3000)    
set @val='<div class="jygy">     <p class="tips"><img src="../../Content/images/gh.png" width="20px" style=" margin-right:5px;"  /><span class="t_tx">�ҳ�������飬��������֤</span></p>        <ul>            <li>            <p class="sum">1</p>            <p class=
  
"title">��������</p>            <p class="tx">ÿ�ܿ�ƾ֤�ӻ汾�ݽ���һ�Σ�ÿ�οɽ�2����</p>            </li>            <li>            <p class="sum">2</p>            <p class="title">���ķ����</p>            <p class="tx">���ķ����'+@book_money+'Ԫ/ѧ�ڣ����ڸ��ºͲ������鼰�ճ�ͼ�������</p>            
  
</li>            <li>            <p class="sum">3</p>            <p class="title">����ʱ��</p>            <p class="tx">Ϊ��֤ͼ��������ԣ�����ʱ���������'+@book_duration+'�ܣ��뼰ʱ�黹��</p>            </li>            <li>            <p class="sum">4</p>            <p class="tit
  
le">��ý������ͼ���</p>            <p class="tx">�������֤�󣬿���ѿ�ͨ��ý������ͼ��ݡ�ÿ��ѧ������50����ý������ͯ���9������˼άѵ���γ̡�</p>            </li>            <li>            <p class="sum">5</p>            <p class="title">�軹����</p>            <p class="tx">����ǰ���ȹ黹�ϴν��飻</p>            </li
  
>            <li>            <p class="sum">6</p>            <p class="title">��ʧ����</p>            <p class="tx">����ͼ�������¡���ͼ����ʧ����(ֻ��ҳ�����������ȱҳ����΢ĥ���޷������������޲�)���빺������򰴼��⳥��</p>            </li>            <li>            <p class="sum">7</p>            <p cla
  
ss="title">�Ƽ��鵥</p>            <p class="tx">���������ӵ������ص㣬���ҵ��鵥��ΪTaÿ���Ƽ����˺��飬����ҳ������Ƽ��鵥������Խ��ġ�</p>            </li>        </ul>    </div>'    
    
if(exists(select * from dbo.set_config_model where kid=@kid))    
begin    
update dbo.set_config_model set convention=@val where kid=@kid    
end    
else     
begin    
insert into set_config_model(kid,convention)    
values (@kid,@val)    
end    
    
    
END
GO
-------------------------------------END------------------------------------------------


select 1 from blogapp..permissionsetting where kid=20759 and ptype=109              
select * from payapp..[user_fees] where kid=20759
select * from payapp..[sgs_pay_record] where kid=20759 and status=1 and crtdate>=''
select * from ossapp..[addservice] where uid=1472258 
select * from ossapp..[addservice_log] where uid=1472258


34148]�����к��������������׶�԰������԰��[34147]�����к��������������׶�԰������԰��1.���ķ�����ã� 150Ԫ/��/ѧ�ڡ�
2.�ɷѷ�ʽ����½ʱ����APP���Ͻɷѣ���½���������棩
3.�ɷ����ޣ� 2016��9��28��- 2016��10��15�ա��Ժ�ÿѧ�ڽ���֤����ʱ�䣺Ϊ��ѧ�ĵ�һ�����ڣ��������ʱ���������һ������ʱ���ڰ���


declare @fee_kid int=32986,@fee_money float=240,@pay_bgndate datetime='2016-09-28',@pay_enddate datetime='2016-09-28'
insert into payapp..fees([from],kid,fee_name,fee_des,expires,fee_money,
deletetag,feetype,expiresType,expiresRemark,expiresenddate,fee_kid,pay_bgndate,pay_enddate)
--declare @fee_kid int=32986,@fee_money float=240,@pay_bgndate datetime='2016-09-28',@pay_enddate datetime='2016-09-28'
select 'WX_JSAPI',0,fee_name,'' fee_des,expires,@fee_money fee_money,
deletetag,feetype,expiresType,expiresRemark,'2017-03-01 23:59:59' expiresenddate,@fee_kid fee_kid,@pay_bgndate pay_bgndate,@pay_enddate  pay_enddate
 from payapp..fees where fee_id=170


[25834]ɳ��ͯ���׶�԰��150Ԫ/ѧ�ڣ���Ч����2017��9��1�ա��鷳����΢��֧����ά�룬лл
32986   ���������������ʽ�԰ ���ķ� 240Ԫ  ��Ч�ڵ�2017/3/1��

select *
--update f set pay_bgndate='2016-09-26',pay_enddate='2016-10-10'
--update f set fee_money=100
  from payapp..fees f where fee_kid=32986


 --��ά�����ӣ� http://payweixin.pc118.zgyey.com/sgspay/ProductPageV5.aspx?kid=25834 

 --ǿ����Ҫ���ֻ���
http://payweixin.pc118.zgyey.com/sgspay/ProductPageV5.aspx?kid=32986 
 
 --��ǿ�ư��ֻ��ţ���Ҫ����������
http://payweixin.pc118.zgyey.com/sgspay/ProductPageV6.aspx?kid=34022 
 
 select * from basicdata..[user] where userid=2175900
 
 select * from PayApp..sgs_pay_record where userid=25834


select *
--update u set mobile='13632432093'
 from BasicData..[user] u where userid =1997886




http://payweixin.pc118.zgyey.com/sgspay/ProductPageV5.aspx?kid=24082 


http://payweixin.pc118.zgyey.com/sgspay/ProductVideo.aspx?kid=24082&userid=1949969&feetype=2 


select * from basicdata..user_child where kid=24082 

