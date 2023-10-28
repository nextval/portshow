drop table  listBook;

purge recyclebin;

create table listBook(
list_no number,
list_name varchar2(20),
list_pwd varchar2(20),
list_title varchar2(200),
list_content varchar2(800),
list_logtime varchar2(30)
);
/*list_pwd 추가*/