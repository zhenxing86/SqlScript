use mcapp
go

--բ���������б�
zj_device_getlist 0,'',1,10

--������¼
zj_runstatus_getlist '223168004',1,10

--ˢ����¼
zj_cardrecord_getlist '223168004',1,10

--Զ��ά����¼
zj_operation_getlist '223168004',1,10

--�����б�
zj_opsetting_getlist

--�����������
zj_operation_add

բ�����ƽ����õĹ���


------------------------
����˻�����԰����(�ṩ��ֻʹ��һ�������Ҫ��ʱ�����ͻ��˽��ջ�����԰��������ͻ�ʹ��)
���浽�����, kid����԰ʱ��
mcapp..hx_setting

select count(1) from mcapp..kindergarten