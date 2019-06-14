USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[user_add_new_teacher]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*    
-- Author:      Master谭    
-- Create date: 2013-05-10    
-- Description:     
-- Memo:    
*/   
CREATE PROCEDURE [dbo].[user_add_new_teacher]  
 @kid int,  
 @cids varchar(100),  
 @account nvarchar(50),  
 @password nvarchar(50),  
 @usertype int,  
 @name nvarchar(20),  
 @birthday datetime,  
 @gender int,  
 @mobile nvarchar(11),  
 @enrollmentdate datetime,  
 @address nvarchar(200),  
 @title nvarchar(20),  
 @post nvarchar(20),  
 @education nvarchar(20),  
 @employmentform nvarchar(20),  
 @politicalface nvarchar(20),  
 @did int,  
 @kinschooltag int,  
 @DoUserID int = 0  
AS  
BEGIN  
 SET NOCOUNT ON   
 EXEC commonfun.dbo.SetDoInfo @DoUserID = @DoUserID, @DoProc = 'basicdata..user_add_new_teacher' --设置上下文标志  
 if(@enrollmentdate='1900-01-01')  
 begin  
  set @enrollmentdate = null  
 end  
  
 if(@birthday = '1900-01-01')  
 begin  
  set @birthday = null  
 end   
   
 insert into [user](account,password,usertype,deletetag,regdatetime,kid,name,nickname,birthday,gender,nation,mobile,email,address,enrollmentdate,headpic)  
 values(@account,@password,@usertype,1,getdate(),@kid,@name,@name,@birthday,@gender,0,@mobile,'',@address,@enrollmentdate,'AttachsFiles/default/headpic/default.jpg')  
  
 DECLARE @userid int,@bloguserid int  
 SET @userid = ident_current('user')  
  
 --合并3.获取uid将数据新增到  
 insert into user_baseinfo(userid,name,nickname,birthday,gender,nation,mobile,email,address,enrollmentdate,headpic)  
  VALUES(@userid,@name,@name,@birthday,@gender,0,@mobile,'',@address,@enrollmentdate,'AttachsFiles/default/headpic/default.jpg')  
  
 --判断@usertype  
 --大于0新增-  
 if(@usertype>0)  
 begin  
  insert into teacher(userid,did,title,post,education,employmentform,politicalface,kinschooltag)  
  VALUES(@userid,@did,@title,@post,@education,@employmentform,@politicalface,@kinschooltag)  
 end  
 else   
 begin  
 --小于0新增-  
  insert into child(userid,fathername,mothername,favouritething,fearthing,favouritefoot,footdrugallergic)  
  VALUES(@userid,'','','','','','')  
 end  
  
 --新增user_bloguser values(@userid)  
 INSERT INTO user_bloguser values(@userid)  
 SET @bloguserid = ident_current('user_bloguser')  
  
 --2.user_kindergarten_ADD(1)  
 INSERT INTO user_kindergarten(userid,kid)VALUES(@userid,@kid)  
  
 --4.user_class_ADD(1)  
 if(REPLACE(REPLACE(@cids,'0',''),',','')<>'')  
 begin  
 INSERT INTO user_class(cid,userid)  
 select col,@userid from dbo.f_split(@cids,',')  
 end  
  --添加到user_class_all表
	insert into user_class_all(cid,userid,deletetag,actiondate,term)
select col, @userid,1,GETDATE(),CommonFun.dbo.fn_getCurrentTerm(@kid,GETDATE(),1) 
		from dbo.f_split(@cids,',')  
 --5.添加到临时表  
 insert into dbo.user_add_temp(userid,usertype,gender,nickname,infofrom,bloguserid)  
 values(@userid,@usertype,@gender,@name,'blog',@bloguserid)  
 --5.添加到临时表  
 insert into dbo.user_add_temp(userid,usertype,gender,nickname,infofrom,bloguserid)  
 values(@userid,@usertype,@gender,@name,'doc',@bloguserid)  
  
 if exists (SELECT  1 FROM blogapp..permissionsetting WHERE kid=@kid and ptype=12)  
 begin  
  exec cardapp..SynInterface_UserInfo_Add @userid,@usertype,0  
 end  
 EXEC CommonFun.dbo.sp_TrgSignal_Clear @pos = 1;  -------清除上下文标志    
 RETURN @userid  
END  
GO
