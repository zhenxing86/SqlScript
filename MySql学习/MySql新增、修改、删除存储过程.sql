/*mysql教程存储过程查看，修改，删除，创建方法
文章主要简单的介绍关于mysql存储过程查看，修改，删除，创建的方法哦，下面举了四个实例来证明一下关于存储过程的操作。
查询数据库中的存储过程：
方法一：（直接查询）
select `specific_name` from mysql.proc where db = 'your_db_name' and `type` = 'procedure'
方法二：（查看数据库里所有存储过程+内容）
show procedure status;
方法三：（查看当前数据库里存储过程列表）
select specific_name from mysql.proc ;
方法四：(查看某一个存储过程的具体内容)
select body from mysql.proc where specific_name = 'your_proc_name';
查看存储过程或函数的创建代码 ：
show create procedure your_proc_name;
show create function your_func_name;
删除存储过程：
drop procedure your_proc_name;

*/

select `specific_name` from mysql.proc where db = 'fandian' and `type` = 'procedure';
show procedure status;
select specific_name from mysql.proc ;
select body from mysql.proc where specific_name = 'GetListTag';
show create procedure GetListTag;
show create function GetListTag;
drop procedure GetListTag;

