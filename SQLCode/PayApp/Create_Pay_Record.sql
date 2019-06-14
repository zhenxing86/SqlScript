use payapp
go
/*      
-- =============================================      
-- Author:  xie    
-- Create date: 2014-03-19      
-- Description: ���ɹ����¼      
-- Memo:    
Create_Pay_Record 295765,1,2,50,'�����԰(С����ѧ��)'    
*/      
alter PROCEDURE Create_Pay_Record    
 @userid int,    
 @ftype int,    
 @termtype int  
   
AS      
    
BEGIN      
 SET NOCOUNT ON      
 EXEC commonfun.dbo.SetDoInfo @DoUserID = @userid, @DoProc = 'Create_Pay_Record' --���������ı�־      
 DECLARE   
 @beancount int,    
 @title nvarchar(50),   
 @orderid int,      
 @re_beancount int=0      
 Begin tran         
 BEGIN TRY        
  select @re_beancount=isnull(re_beancount,0) from payapp..user_pay_account where userid = @userid     
  select @beancount = ISNULL(bean_count,50),@title = isnull(product_name,'error')   
   from payapp..product where ftype=@ftype and termtype = @termtype   
  if @re_beancount>=@beancount     
  begin      
      --���ǻ۶�    
    UPDATE PAYAPP..user_pay_account     
  SET re_beancount=re_beancount-@beanCount,    
   re_amount = re_amount-(@beanCount/5)    
  where userid =@userId     
        
    --��ͨȨ��    
    update u set lqRight=CommonFun.dbo.fn_RoleAdd(lqRight,@termtype)     
  from basicdata..[user] u where userid=@userid    
     
    --��¼����    
    INSERT INTO payapp..pay_record(userid,ftype,bean_count,title,order_date,deletetag)      
  VALUES(@userid,@ftype,@beancount,@title,getdate(),1)     
        
    SET @orderid = ident_current('pay_record')      
    --print '��¼����:'+ cast(@orderid as varchar)  
  end       
  else     
  begin    
 SET @orderid = -1    
  end    
      
       
  Commit tran                                    
 End Try            
 Begin Catch            
  Rollback tran         
  EXEC CommonFun.dbo.sp_TrgSignal_Clear @pos = 1;  -------��������ı�־   
  --print '��¼����err:0'            
  Return 0    
       
 end Catch        
  EXEC CommonFun.dbo.sp_TrgSignal_Clear @pos = 1;  -------��������ı�־      
  --print '��¼����err:'+ cast(@orderid as varchar)  
 Return @orderid    
     
      
END      
  