create table board(
    board_num number(3) primary key, --글번호
    board_id varchar2(20), --작성자아이디
    board_title varchar2(100), --글제목
    board_content varchar2(2000), --글내용
    reg_date date, --등록일 
    foreign key(board_id) REFERENCES marketMember(id) on delete cascade
);

select * from board;

desc board;

insert into board values (board_num.nextval,'aa','asd','asd',sysdate);

drop table board;

create sequence board_num;
drop sequence board_num;

commit;




