drop table admin;

create table admin (
	adminId varchar2(12) primary key, 
	adminPasswd varchar2(12) not null
);

insert into admin values ('admin','admin');
delete admin where adminId = 'admin';

select * from admin;
select RPAD(adminPasswd, 12, '*') from admin where adminId = 'admin';
select adminPasswd from admin where adminId = 'admin';


drop table marketMember;
create table marketMember (
	id varchar2(20) primary key,
	passwd varchar2(20),
	name varchar2(20),
    reg_date Timestamp default sysdate,
    tel varchar2(20),
    address varchar2(100)
);

insert into marketMember(id, passwd, name, tel, address) values('aa', 'aa', 'aa', '9010', 'sss'); 
select * from marketMember;
delete from marketMember where id = 'vv';

commit;