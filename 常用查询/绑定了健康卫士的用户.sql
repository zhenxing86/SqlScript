--��������׶�԰����Щ�ҳ�ֻ��ע�˽�����ʿ��Щ�ҳ����˽�����ʿ���ܲ��ܲ�õ��������ܲ��ܽ���Щ���ݵ�����
use BasicData
go

select * from User_Child uc 
where kid=20675 and exists(select 1 from weixin_user wu where uc.userid=wu.userid)

