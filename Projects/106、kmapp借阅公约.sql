

;with cet as(
 select col kid from CommonFun.dbo.f_split('1897',',')t
)
insert into AtsApp..set_borrow_time(kid,gradeid,gradename,week,weekname,ftime,ltime,orderby,typeid,deletetag)
select c.kid,gradeid,gradename,week,weekname,ftime,ltime,orderby,typeid,deletetag
 from AtsApp..set_borrow_time h
  cross join cet c 
   where h.kid=-1 and not exists( select 1 from AtsApp..set_borrow_time hm where hm.kid=c.kid)





--�޸��Ķ���Լ
select  * 
--update m set convention = '<div class="jygy">     <p class="tips"><img src="../../Content/images/gh.png" width="20px" style=" margin-right:5px;"  /><span class="t_tx">�ҳ�������飬��������֤</span></p>        <ul>            <li>            <p class="sum">1</p>            <p class=                    "title">��������</p>            <p class="tx">ÿ�ܿ�ƾ֤�ӻ汾�ݽ���һ�Σ�ÿ�οɽ�2����</p>            </li>            <li>            <p class="sum">2</p>            <p class="title">���ķ����</p>            <p class="tx">���ķ����100Ԫ/��ѧ�ڣ����ڸ��ºͲ������鼰�ճ�ͼ�������</p>                          </li>            <li>            <p class="sum">3</p>            <p class="title">����ʱ��</p>            <p class="tx">Ϊ��֤ͼ��������ԣ�����ʱ���������2�ܣ��뼰ʱ�黹��</p>            </li>            <li>            <p class="sum">4</p>            <p class="tit                    le">��ý������ͼ���</p>            <p class="tx">�������֤�󣬿���ѿ�ͨ��ý������ͼ��ݡ�ÿ��ѧ������50����ý������ͯ���9������˼άѵ���γ̡�</p>            </li>            <li>            <p class="sum">5</p>            <p class="title">�軹����</p>            <p class="tx">����ǰ���ȹ黹�ϴν��飻</p>            </li                    >            <li>            <p class="sum">6</p>            <p class="title">��ʧ����</p>            <p class="tx">����ͼ�������¡���ͼ����ʧ����(ֻ��ҳ�����������ȱҳ����΢ĥ���޷������������޲�)���빺������򰴼��⳥��</p>            </li>            <li>            <p class="sum">7</p>            <p cla                    ss="title">�Ƽ��鵥</p>            <p class="tx">���������ӵ������ص㣬���ҵ��鵥��ΪTaÿ���Ƽ����˺��飬����ҳ������Ƽ��鵥������Խ��ġ�</p>            </li>        </ul>    </div>'
from atsapp.dbo.set_config_model m where kid=32524

--�޸�֧�������ʾ	payapp..sgs_GetUserFeeInfo
select  * 
--update m set expires=2
from payapp.dbo.fees m where kid=12511  


select * from payapp..fees where kid=31717
select * from payapp..fees where fee_id=150

update payapp..fees set fee_money=100 where fee_id=150