create table board(
    board_num number(3) primary key, --�۹�ȣ
    board_id varchar2(20), --�ۼ��ھ��̵�
    board_title varchar2(100), --������
    board_content varchar2(2000), --�۳���
    reg_date date, --����� 
    foreign key(board_id) REFERENCES marketMember(id) on delete cascade
);

select * from board;

desc board;

insert into board values (board_num.nextval,'aa','asd','asd',sysdate);

drop table board;

create sequence board_num;
drop sequence board_num;

commit;




