�з�:project=1,admintype=2 



http://payment.pc118.zgyey.com/
http://lsgspay.zgyey.com/kinpay/notice/?uid=685549&cdate=2016-11-01
http://lsgspay.zgyey.com/kinpay/noticeV2/?uid=685549&cdate=2018-04-01

http://sgs.pay.zgyey.com/kinpay/noticeV2?uid=685549&cdate=2016-11-01

select * from kmapp..km_user where kid=35029 and role=0
insert into PayApp..admin_user(kid,userid,admintype,project) values(35029,0,1,1)
insert into PayApp..admin_user(kid,userid,admintype,project) values(35029,0,1,1)

select *
--update a set project=1,admintype=2
 from PayApp..admin_user a 
  inner join basicdata..[user] u on u.userid=a.userid
   where a.kid=33858 and id=1
select * from payapp..kin_pay_notice where userid=2132560 and cdate='2016-10-01 00:00:00.000'
payapp..kin_pay_notice_GetModelEx 

--�׶�԰���˺��� �������� 6214633136901552900 ���
--http://sgs.pay.zgyey.com/kinpay/noticev2?uid=685549&cdate=2016-11-01
insert into FeeNotice(kid,kname,sendapp,sendweixin,remarks) values(29096,'��Ԫ�����׶�԰',1,0,N'<p class="title">��ܰ��ʾ</p>
            <p>
            ��λ�ҳ������ã������շ���Ŀ��<br />
            1���зѣ���ʵ��ȡ��<br />
            2���ŷ�19�칲342Ԫ<br />
            ��ҳ���ʱˢ�����ѣ�Ҳ����֧����������ת�ʡ�<br />
            ��л������ϣ�
            </p>
			<p style="padding:1rem 0 .28rem .48rem; font-weight: bold;">�׶�԰�տ��ʺ���Ϣ���£�</p>
            <ul>
                <li>1��֧������<span class="color-a1">����ϵ�����޸�</span></li>
                <li>2�������ʺţ�<span class="color-a1">����ϵ�����޸�</span></li>
			    <li>������<span class="color-a1">����ϵ�����޸�</span></li>
				<li>�տ����У�<span class="color-a1">����ϵ�����޸�</span></li>
            </ul>
')


insert into FeeNotice(kid,kname,sendapp,sendweixin,remarks) values(33858,'����������������׶�԰',1,1,N'<p class="title">��ܰ��ʾ</p>
			<p>
			��λ�ҳ������ã��׶�԰{Month}�·��շ�ʱ����{noticedesc}�������շ���Ŀ��<br />
			1���зѣ���ʵ��ȡ��<br />
			2���ŷ�22�칲396Ԫ<br />
			��ҳ���ʱˢ�����ѣ�Ҳ����֧������΢��֧��������ת�ʡ�<br />
			��л������ϣ�
			</p>
			<p style="padding:1rem 0 .28rem .48rem; font-weight: bold;">�׶�԰�տ��ʺ���Ϣ���£�</p>
            <ul>
				<li>1��֧����֧����<span class="color-a1">15360811312</span></li>
				<li>2��΢��֧����<span class="color-a1">15360811312</span></li>
				<li>3�������ʺţ�<span class="color-a1">622439910000399974</span></li>
				<li>������<span class="color-a1">��С��</span></li>
				<li>�տ����У�<span class="color-a1">����ũ����ҵ����С����֧��</span></li>
            </ul>
')




update f set remarks=N'<p class="title">ͨ    ֪</p>
			<p>
			��λ�ҳ������Ǻã��׶�԰11�·��շ�ʱ����11��7����9�գ���3�죩�������շ���Ŀ���£�<br />
			1���зѣ���ʵ��ȡ��<br />
			2���ŷ�22�칲396Ԫ����11��6������һ���ŷѣ�����ʵ���ŷ�21�칲378Ԫ��<br />
			��ҳ���ʱˢ�����ѣ�ͬʱҲ֧��֧������΢��ת�ʺ�����ת�ʡ�<br />
			��л������ϣ�
			</p>
			<p style="padding:1rem 0 .28rem .48rem; font-weight: bold;">�׶�԰�տ��ʺ���Ϣ���£�</p>
            <ul>
				<li>1��֧����֧����<span class="color-a1">15360811312</span></li>
				<li>2��΢��֧����<span class="color-a1">15360811312</span></li>
				<li>3�������ʺţ�<span class="color-a1">622439910000399974</span></li>
				<li>������<span class="color-a1">��С��</span></li>
				<li>�տ����У�<span class="color-a1">����ũ����ҵ����С����֧��</span></li>
            </ul>
'
 from payapp..FeeNotice f
 where kid=33858

��λ�ҳ���
���Ǻã��׶�԰11�·��շ�ʱ����11��7����9�գ���3�죩�������շ���Ŀ���£�1���зѣ���ʵ��ȡ����2���ŷ�22�칲396Ԫ����11��6������һ���ŷѣ�����ʵ���ŷ�21�칲378Ԫ����ҳ���ʱˢ�����ѣ�Ҳ����֧������΢��ת�ʡ�����ת�ʡ�лл��ϡ�

����������׶�԰
 2018��11��6��

 
 
select *
--update f set sendweixin=1
--delete 
from FeeNotice f where kid= 20675

