

select * from kmapp..phonecode where phone='18627955721' and adddate>='2018-10-29'
--����ʧ�ܼ�¼
select * from gateway_log where actionname='main/checkPhoneBase' and crtdate>='2018-10-29'
--�ֶ�������־ 
select * from mt_log where mobile='18627955721' and crtdate>='2018-10-29'