
2014-08-21

--��ʼ������
select * from basicdata..dict_xml where catalog='ȱ��ԭ��'
--�¼١����١�δˢ��������

--declare @code int= 1,@Caption nvarchar(50)='�¼�',@Catalog nvarchar(50)='ȱ��ԭ��',@orderby int=1
--declare @code int= 2,@Caption nvarchar(50)='����',@Catalog nvarchar(50)='ȱ��ԭ��',@orderby int=2
--declare @code int= 3,@Caption nvarchar(50)='δ��',@Catalog nvarchar(50)='ȱ��ԭ��',@orderby int=3
--declare @code int= 99,@Caption nvarchar(50)='����',@Catalog nvarchar(50)='ȱ��ԭ��',@orderby int=99
insert into basicdata..dict_xml(Code,Caption,[Catalog],OrderBy) select @code,@Caption,@Catalog,@OrderBy



