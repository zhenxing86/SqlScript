
���͵ġ�17607�� ��������������������׶�԰  [17606]����������������ֺ�ɽׯ�׶�԰
�����׶�԰Ҫ���ò��Ͳ����⿪�ţ�ֻ�б����ͬѧ�ܲ鿴��

17607,17606
blogapp

  SELECT top 100 posttoclassdefault,commentpermission,openblogquestion,openbloganswer,kininfohide,messagepermission,postviewpermission,albumviewpermission  
 FROM blog_baseconfig  where openblogquestion!=''
 
 blog_baseconfig
 
 24071 ���ݽ����׶�԰   24072 ���ݽ����ִ��׶�԰  24073 ���Ļ�������ѵ����  ������԰�Ĳ������ò�Ҫ���⹫����лл��
 
 select u.account,*
 --update bb set openblogquestion='����������ʲô',openbloganswer='123123'
 from blog_baseconfig bb
  inner join BasicData.dbo.user_bloguser ub 
   on bb.userid=ub.bloguserid
  inner join basicdata..[user] u 
   on ub.userid=u.userid and u.deletetag=1
   where u.kid in(17607,17606) --and bb.userid=820923
   and (bb.openblogquestion='' or bb.openblogquestion is null)
   
   --select * into blog_baseconfig1409 from blog_baseconfig
   
   select top 10 * from blog_baseconfig bb where bb.openblogquestion!='' and bb.openbloganswer!=''
    select * from BasicData.dbo.user_bloguser where bloguserid=807732
   select * from basicdata..[user] where userid=880902
   blogapp
   select * from BasicData..user_bloguser where bloguserid=820911 userid=864232
   select * from blog_baseconfig where userid=807732
   
   864232	804075
   update blog_baseconfig set [description] ='����ʦ�Ľ�ѧ���ָ�������2'
    where userid=804075

--    insert into blog_baseconfig(userid,
--blogtitle,
--description,
--defaultdispmode,
--postdispcount,
--themes,
--messagepref,
--postscount,
--albumcount,
--photocount,
--visitscount,
--createdatetime,
--updatedatetime,
--lastposttitle,
--lastpostid,
--blogtype,
--blogurl,
--integral,
--iskmpuser,
--kininfohide,
--isstart,
--posttoclassdefault,
--commentpermission,
--openblogquestion,
--openbloganswer,
--messagepermission,
--postviewpermission,
--albumviewpermission,
--photowatermark)

--select 
--804075,
--blogtitle,
--description,
--defaultdispmode,
--postdispcount,
--themes,
--messagepref,
--postscount,
--albumcount,
--photocount,
--visitscount,
--createdatetime,
--updatedatetime,
--lastposttitle,
--lastpostid,
--blogtype,
--blogurl,
--integral,
--iskmpuser,
--kininfohide,
--isstart,
--posttoclassdefault,
--commentpermission,
--'',
--'',
--messagepermission,
--postviewpermission,
--albumviewpermission,
--photowatermark
--from blog_baseconfig where userid=98 