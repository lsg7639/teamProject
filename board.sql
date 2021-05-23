create table board(
    board_num number(3) primary key, --글번호
    board_id varchar2(20), --작성자아이디
    board_password varchar2(4),
    board_title varchar2(100), --글제목
    board_content varchar2(2000), --글내용
    board_file varchar2(100), --첨부파일 이름
    board_count number, --조회수
    reg_date date --등록일 
);

insert into board values(
board_num_seq.nextval,
"bb",
"bb",
"테스트 제목",
"~~~테스트 내용~~~",
".jpg",
sysdate
);


drop table board;

create sequence board_num;

commit;




