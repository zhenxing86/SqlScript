USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[invoicemanage_ADD]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--Add
------------------------------------
CREATE PROCEDURE [dbo].[invoicemanage_ADD]
  @kid int,
 @ismail int,
 @isapplicant int,
 @isinvoice int,
 @istax int,
 @mailaddress varchar(300),
 @invoicetitle varchar(500),
 @iname varchar(30),
 @tel varchar(10),
 @qq varchar(20),
 @uid int,
 @deletetag int
 
 AS 
	INSERT INTO [invoicemanage](
  [kid],
 [ismail],
 [isapplicant],
 [isinvoice],
 [istax],
 [mailaddress],
 [invoicetitle],
 [iname],
 [tel],
 [qq],
 [uid],
 [deletetag]
 
	)VALUES(
	
  @kid,
 @ismail,
 @isapplicant,
 @isinvoice,
 @istax,
 @mailaddress,
 @invoicetitle,
 @iname,
 @tel,
 @qq,
 @uid,
 @deletetag
 	
	)

    declare @ID int
	set @ID=@@IDENTITY
	RETURN @ID



GO
