




insert into kmapp..HomeMenu(type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid)
values( type,title,url,role,orderby,isopen,ico_url,ico_url2,servType,kid)

alter table kmapp..HomeMenu add module_id int 

create table kmapp..HomeMenuModule 
(
id int identity(1,1) primary key,
name nvarchar(200),
remark nvarchar(200),
crtdate datetime default(getdate()),
role int,
deletetag int default(1)
)

create table kmapp..HomeMenuKindergarten 
(
id int identity(1,1) primary key,
kid int,
role int,
module_id int,
crtdate datetime default(getdate()),
)

kmapp..HomeMenu  module_id

--�ҳ���ͨ�� ( �Ķ�\����\�༶\�ɳ�)
select * from kmapp..HomeMenu h  where kid =0 and role=2
--�ҳ����İ� (���ķ���\�����鵥\��԰����\���Ĺ�Լ)
select * from kmapp..HomeMenu h  where kid =-2 and role=2  --ͼƬ��û���ṩ
--԰��/��ʦ�Ķ��ۺϰ�(�Ķ�\����\�༶\΢��վ)   --�����Ķ�ϵͳ����Ҫ����ʦ���ҳ�������
select * from kmapp..HomeMenu h  where kid =-3 and role=0
--԰��/��ʦ����ר�ð�(ͼ�����\�����鵥\���Ĺ���\���ķ���)
select * from kmapp..HomeMenu h  where kid =-4 and role=0

insert into kmapp..HomeMenuModule(name,remark,role)
values('�ҳ���ͨ��','���� �Ķ�\����\�༶\�ɳ�',2)
insert into kmapp..HomeMenuModule(name,remark,role)
values('�ҳ����İ�','���� ���ķ���\�����鵥\��԰����\���Ĺ�Լ',2)

insert into kmapp..HomeMenuModule(name,remark,role)
values('԰���Ķ��ۺϰ�','���� �Ķ�\����\�༶\΢��վ',0)
insert into kmapp..HomeMenuModule(name,remark,role)
values('��ʦ�Ķ��ۺϰ�','���� �Ķ�\����\�༶\΢��վ',1)

insert into kmapp..HomeMenuModule(name,remark,role)
values('԰������ר�ð�','���� ͼ�����\�����鵥\���Ĺ���\���ķ���',0)
insert into kmapp..HomeMenuModule(name,remark,role)
values('��ʦ����ר�ð�','���� ͼ�����\�����鵥\���Ĺ���\���ķ���',1)


insert into kmapp..HomeMenuModule(name,remark,role)   --7
values('�ҳ���ͨ��V2','���� ΢��վ\�ɳ�����\�Ķ�\�༶',2)


insert into kmapp..HomeMenuModule(name,remark,role)   --8
values('�ҳ���ͨ��V3','���� �Ķ�����԰��ϵ���༶��΢��վ',2)
insert into kmapp..HomeMenuModule(name,remark,role)   --9
values('԰���ۺϰ�V2','���� �Ķ�����԰��ϵ���༶��΢��վ',0)
insert into kmapp..HomeMenuModule(name,remark,role)   --10
values('��ʦ�ۺϰ�V2','���� �Ķ�����԰��ϵ���༶��΢��վ',1)


insert into kmapp..HomeMenuModule(name,remark,role)   --11
values('Уҽ��','���� ���챨���쳣ȷ�ϡ�������ÿ��ʳ��',3)

������������Уҽ��ɫ��¼ʱ������ĵ���������֧��Уҽ��ʱ�����˷����ϴ�ÿ��ʳ�ף��鿴���챨�棬�Գ����쳣ȷ�ϵ����׶������뽡����صĹ��ܡ�
      ������Уҽ�޹صĹ�����ڣ����԰��ͨ����ѧ�ĵ��ȡ��ñ���ҽ����¼ʱ��������Уҽ������صĹ��ܵ�����������
      
      
      

�Ķ�����԰��ϵ���༶��΢��վ
�Ķ�\����\�༶\�ɳ�

select * from kmapp..HomeMenuModule 
select * from kmapp..OptionsTab where kid=0


fn_RoleGetList