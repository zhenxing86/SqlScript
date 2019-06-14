CREATE Procedure [dbo].[ValidateUserBefore]  
@account varchar(50),        
@pwd varchar(50),  
@strongpassword int  
as  
Set Nocount On  
  
Declare @userid int, @pwd1 nvarchar(50), @superlogin bit = 0, @error_count int, @kid int  
  
Select @userid = userid, @pwd1 = [password], @kid = kid From dbo.[user] Where account = @account and deletetag = 1  
  
if Isnull(@userid, 0) = 0 and Charindex('#', @account) > 0  
begin      
  Declare @InnerAccount varchar(50)      
  Select @InnerAccount = Right(@account, Len(@account) - Charindex('#', @account))      
  if Exists(Select * From [ossapp].[dbo].[users] Where account = @InnerAccount and password = @pwd) and Left(@account, Charindex('#', @account) - 1) <> ''      
  begin  
    Select @userid = userid, @pwd1 = @pwd, @superlogin = 1    
      From dbo.[user]  
      Where account = Left(@account, Charindex('#', @account) - 1)        
        AND deletetag = 1  
  end  
end  
  
Select @error_count = error_count From dbo.password_error Where userid = @userid and error_time > Convert(Varchar(10), Getdate(), 120)  
  
if isnull(@pwd, '') = ''  
begin  
  Select -1, '登录失败'  
  return  
end  
else if @superlogin = 0 and Isnull(@error_count, 0) >= 5  
begin  
  Select 5, '密码错误已超过最大次数，帐号已冻结，请使用手机找回密码或联系客服。'  
  return  
end  
else if @userid > 0 and @pwd = @pwd1 and Exists (Select * From dbo.password_expire Where userid = @userid) and @superlogin = 0  
begin  
  Select 3, '用户密码为初始密码，需要修改密码后登录。'  
  return  
end  
else if @userid > 0 and @pwd = @pwd1 and @strongpassword = 0 and Exists(Select * From BlogApp.dbo.permissionsetting Where kid = @kid and ptype = 163) and @superlogin = 0  
begin  
  Select 4, '密码过于简单，请修改密码。'  
  return  
end  
else if @userid > 0 and Isnull(@pwd, '') <> Isnull(@pwd1, '')   
begin  
  ;Merge dbo.password_error a  
  Using (Select @userid userid) b On a.userid = b.userid  
  When Matched Then   
    Update Set a.error_count = Case When error_time > Convert(Varchar(10), Getdate(), 120) Then Isnull(a.error_count, 0) + 1 Else 1 End,  
                a.error_time = Getdate()  
  When Not Matched Then  
    Insert (userid, error_count, error_time) Values(b.userid, 1, Getdate());  
  
  Select 2, Case When 4 - @error_count = 0 Then '密码错误已超过最大次数，帐号已冻结，请使用手机找回密码或联系客服。' Else '密码错误，还可以尝试' + Cast(4 - Isnull(@error_count, 0) as Varchar) + '次。' End  
  return  
end  
else if @userid > 0 and @pwd = @pwd1  
begin  
  Delete dbo.password_error Where userid = @userid  
  
  Select 1, '登录成功', Cast(@userid as Varchar(10))  
  return  
end  
else   
begin  
  Select -1, '登录失败'  
  return  
end  
  