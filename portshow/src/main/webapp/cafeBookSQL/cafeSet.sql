delete listBook;

drop sequence listBook_num;

create sequence listBook_num
start with 0
minvalue 0
increment by 1;

declare 
begin
for i
in 0..255 loop
insert into listBook
values (listBook_num.nextval, 'guest', '1234','제목입니다', '내용입니다', sysdate);
end loop;
end;
/