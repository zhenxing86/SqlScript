USE [edu_jn]
GO
/****** Object:  StoredProcedure [dbo].[kindergarten_condition_Delete]    Script Date: 2014/11/24 23:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






------------------------------------
--鐢ㄩ€旓細鍒犻櫎涓€鏉¤褰?
--椤圭洰鍚嶇О锛?
--璇存槑锛?
--鏃堕棿锛?012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[kindergarten_condition_Delete]
@id int
 AS 
	DELETE [kindergarten_condition]
	 WHERE ID=@id 










GO
