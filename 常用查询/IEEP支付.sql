select * from PayApp..sgs_pay_record where [from]='jsapi' and status=1
select * from PayApp..fees where fee_kid=4


'лһ'
http://payweixin.pc118.zgyey.com/sgspay/ProductPageV5.aspx?kid=20675&feetype=8

--------------------------------------IEEP������Start-----------------------------------------------------
--http://payweixin.pc118.zgyey.com/sgspay/ProductIEEP.aspx?kid=20675&feetype=8
--http://payweixin.zgyey.com/sgspay/ProductIEEP.aspx?kid=20675&feetype=8
--payapp..sgs_fees_GetModelEx @kid=20675,@feetype=8  

--1) ���ý�����Ч��
--expirestype  0����Ȼ�£�1��������ʱ�䣬 2�������ޣ�һ���Խɷ�
insert into payapp..fees([from],kid,fee_name,fee_des,expires,fee_money,deletetag,feetype,expirestype,expiresremark,expiresenddate,fee_kid,pay_bgndate,pay_enddate)
values('JSAPI',0,'IEEP���������','',0,150,1,8,2,'һѧ��','2019-02-10 23:59:59',14934,'2019-09-19','2019-10-30')

--2) �޸�����
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
where f.kid=20675

select * 
--update f set fee_money=1
from payapp..fees f where fee_kid=28277 and fee_id=523
select * from payapp..sgs_pay_record where userid=1272698  --'лһ' 'л��'
select * from payapp..sgs_pay_record where crtdate>='2019-07-17'


-------------------------------------IEEP������END----------------------------------------------