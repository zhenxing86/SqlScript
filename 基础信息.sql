SELECT SERVERPROPERTY('productversion') as '��Ʒ�汾', SERVERPROPERTY ('productlevel') as '��Ʒ����'  , SERVERPROPERTY ('edition') as '�汾'

--userbaseinfo
select * from gbapp..moduleset where kid=4246;
select * from BasicData..child where userid = 328052
select * from BasicData..class where cid = 15186;
select * from BasicData..[user_class] where userid = 328052
select * from BasicData..user_baseinfo where userid = 328052
select * from PayApp..user_pay_account where userid = 328052
select * from basicdata..grade where gid = 36
select * from basicdata..kindergarten where kid =4246;
select * from gbapp..GrowthBook where userid = 328052 
--gbid = 22614  (��gbid = 105279)

--��֮��Ĺ�ϵ
select  u.userid,u.name,k.kid,k.kname,cls.cid,cls.cname,g.gid,g.gname,isnull(p.re_beancount,0) beancount,c.vipstatus,m.gbmodule,m.term,gb.gbid
	from BasicData..user_baseinfo u
	inner join BasicData..user_class uc on uc.userid =u.userid
	inner join BasicData..class cls on cls.cid =uc.cid
	inner join BasicData..kindergarten k on k.kid=cls.kid
	inner join GBApp..HomeBook hb on hb.kid =k.kid and hb.classid=cls.cid 
	inner join GBApp..GrowthBook gb on gb.hbid = hb.hbid and gb.userid = u.userid 
	inner join BasicData..grade g on g.gid = cls.grade
	inner join BasicData..child c on c.userid=u.userid
	left join PayApp..user_pay_account p on p.userid=u.userid
	inner join gbapp..moduleset m on m.kid = k.kid and m.term=gb.term 
	where u.userid=328052

--select * from ossapp..users;


--����Ա��԰������ʦ��С������Ϣ
select * from BasicData..[user] u  
--where u.usertype in (97,98)  --԰��97������Ա98
--where u.usertype not in (97,98)  --԰��������Ա
where u.usertype =0 --ѧ�����ҳ�
--where u.usertype =1 --��ʦ

select * from ossapp..users --��������Ա��

select * from basicdata..area
select * from ossapp..agentarea --�����Ͻ����



