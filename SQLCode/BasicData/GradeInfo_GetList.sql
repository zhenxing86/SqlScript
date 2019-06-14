use BasicData
go

/*
-- Author:  xzx  
-- Create date: 2014-07-30  
-- Description: ��ȡ��ʦ�̵��꼶��Ϣ  ��԰��������Ա��ȡ�����꼶��
demo:

select * from [class] where kid= 12511
GradeInfo_GetList 12511,1,98
	
*/
Create proc GradeInfo_GetList
@kid int
,@userid int
,@usertype int
as

begin
	if @usertype=1 --��ʦ
	begin
	  SELECT distinct g.gid,g.gname,g.[order]  
       FROM [grade] g 
        inner join [class] c on g.gid=c.grade  
        inner join user_class uc on uc.cid = c.cid and uc.userid = @userid
       where c.deletetag=1 and c.iscurrent=1 and c.kid=@kid  
       order by g.[order]  
 
    end
    else if @usertype in (97,98) --����Ա��԰��
    begin
	 SELECT distinct g.gid,g.gname,g.[order]  
       FROM [grade] g 
        inner join [class] c on g.gid=c.grade  
       where c.deletetag=1 and c.iscurrent=1 and c.kid=@kid  
       order by g.[order]  
    end
end