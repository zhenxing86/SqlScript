/*

#select * from tableName where 条件 limit 当前页码*页面容量-1 , 页面容量
#分页

call GetListTag (4,10);

*/
DELIMITER $$
create PROCEDURE `GetListTag`(IN `_page` int,IN `_size` int)
BEGIN
	
    #select 11 pagesize;
    
	set @bgnIndex = _page*_size-1;
	#set @bgnIndex = (_page-1)*_size;
	set @SqlCommand=null;

	select _page curpage,_size pagesize ,@bgnIndex bgnIndex;

	
	#select * from tb_collect where 1=1 limit @bgnIndex,_size;

	#SELECT * FROM `content` WHERE id> (SELECT id FROM `content` ORDER BY id desc LIMIT ".($page-1)*$pagesize.", 1) ORDER BY id desc LIMIT $pagesize
	set @SqlCommand =CONCAT('SELECT * FROM `tb_collect` WHERE id> (SELECT id FROM `tb_collect` ORDER BY id desc LIMIT ' , @bgnIndex, ',1) ORDER BY id desc LIMIT ', _size);

	select @SqlCommand;
	PREPARE cmd from @SqlCommand;
	EXECUTE cmd;
	DEALLOCATE PREPARE cmd;

End $$
DELIMITER ;

/*

drop procedure GetListTag;

call GetListTag 1,10;


set @bgnIndex = 0;
set @pagesize = 10;
set @SqlCommand=null;

set @SqlCommand =CONCAT('SELECT * FROM `tb_collect` WHERE id> (SELECT id FROM `tb_collect` ORDER BY id desc LIMIT ' , @bgnIndex, ',1) ORDER BY id desc LIMIT ' , @pagesize);

select @SqlCommand;

PREPARE stmt from @SqlCommand;
select stmt;
#EXECUTE stmt;

SELECT * FROM `tb_collect` WHERE id> (SELECT id FROM `tb_collect` ORDER BY id desc LIMIT 10,1) ORDER BY id desc LIMIT 10

*/



