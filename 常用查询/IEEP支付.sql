select * from PayApp..sgs_pay_record where [from]='jsapi' and status=1
select * from PayApp..fees where fee_kid=4


'谢一'
http://payweixin.pc118.zgyey.com/sgspay/ProductPageV5.aspx?kid=20675&feetype=8

--------------------------------------IEEP报名费Start-----------------------------------------------------
--http://payweixin.pc118.zgyey.com/sgspay/ProductIEEP.aspx?kid=20675&feetype=8
--http://payweixin.zgyey.com/sgspay/ProductIEEP.aspx?kid=20675&feetype=8
--payapp..sgs_fees_GetModelEx @kid=20675,@feetype=8  

--1) 设置金额和有效期
--expirestype  0按自然月，1：按具体时间， 2是无期限，一次性缴费
insert into payapp..fees([from],kid,fee_name,fee_des,expires,fee_money,deletetag,feetype,expirestype,expiresremark,expiresenddate,fee_kid,pay_bgndate,pay_enddate)
values('JSAPI',0,'IEEP报名服务费','',0,150,1,8,2,'一学期','2019-02-10 23:59:59',14934,'2019-09-19','2019-10-30')

--2) 修改描述
update f set html_remark=N'<div>
        	<p class="text-a1">'+k.kname+'与国内最专业的幼儿互动教育平台--中国幼儿园门户网进行合作，为家长提供如下服务：</p>
            <p><img src="/Content/images/a1.jpg"/></p>
            <p class="text-a1">由于发送家园短信、使用成长档案、购买课件资源等各项服务直接成本及人员成本的存在，家长使用上述服务，需要向中国幼儿园门户网支付<span style="color:#E70003">'
            +CAST(f.fee_money as varchar)+'元/'+f.expiresRemark
            +'</span>的成本服务费用，希望各位家长给予理解和支持</p>
        	'--<p class="text-a1" style="color:#E70003"><strong>缴费时间：</strong>10月13—14日（周五、周六）</p>
        +'</div>'
--select *

from payapp..fees f inner join BasicData..kindergarten k on f.kid=k.kid
where f.kid=20675

select * 
--update f set fee_money=1
from payapp..fees f where fee_kid=28277 and fee_id=523
select * from payapp..sgs_pay_record where userid=1272698  --'谢一' '谢二'
select * from payapp..sgs_pay_record where crtdate>='2019-07-17'


-------------------------------------IEEP报名费END----------------------------------------------