--[26224]�������޺���¹���׶�԰��һƪʳ���׶�԰��ӳ�ղ������ţ��Է���ʾ�ϴ���ʱ��ѡ ����ʳ�� ���Ͷ��š��鷳������æ��ѯһ��ԭ��лл��

select * from KWebCMS..recipe where siteid=26224
select * from KWebCMS..recipe_sms where siteid=26224 and contentid=583359  --5712 583359


select * from BasicData..User_Child where kid=26224

insert into KWebCMS..recipe_sms_error( siteid,categoryid,contentid,title,sendtime,content,errorlog,Sendusercount,sendsmscount)                 
   values( @siteid,@categoryid,@contentid,@title,@sendtime,@content,'������������',@total_man_num,@total_smscount)  
   
select * from KWebCMS..recipe_sms_error where siteid=26224    
select * from sms..sms_batch where kid=26224


INSERT INTO sms_batch(sender, smscontent, Sendusercount, sendsmscount, sendtime,                         
      kid, sendtype, recobjid, sendmode, xuanwu, yimei, xian, cid,smstype,appsend)                          
      SELECT @douserid, @content, @man_num, @smscount, @sendtime, @siteid, 3,                         
       @recuserid, 1, ISNULL(@xuanwu,0), ISNULL(@yimei,0), ISNULL(@xian,0), @cid, 7,0                                           
      select @taskid = ident_current('sms_batch')       
      set @taskids = @taskids+','+ cast(@taskid as varchar)    