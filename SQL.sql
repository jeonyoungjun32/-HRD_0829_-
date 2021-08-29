create table member_tbl_ll(
member_no number not null,			 회원번호
member_id varchar2(10) not null, 	아이디
member_name varchar2(20) not null,	 이름
member_grade char(1),				등급
member_hobby varchar2(100),			취미
member_date date,					등록일자
primary key(member_no)
);

drop table member_tbl_ll

insert into member_tbl_ll values('1001','hong','홍길동','S','독서,운동,영화','18/01/10'); 
insert into member_tbl_ll values('1002','choi','최영문','A','영화','18/01/11'); 
insert into member_tbl_ll values('1003','pary','박기자','A','독서','18/01/12'); 
insert into member_tbl_ll values('1004','lee','이은주','B','운동','18/01/13'); 
insert into member_tbl_ll values('1005','kang','강하나','S','','18/01/14'); 

select * from member_tbl_ll

create table friend_tbl_ll(
req_member_no number not null,
res_member_no number,
req_date date,
allow_yn char(1)
);

select * from friend_tbl_ll

insert into friend_tbl_ll values('1001','1002','18/09/20','Y');
insert into friend_tbl_ll values('1003','1001','18/09/21','Y');
insert into friend_tbl_ll values('1002','1004','18/09/21','Y');
insert into friend_tbl_ll values('1001','1005','18/09/22','N');
insert into friend_tbl_ll values('1002','1005','18/09/22','Y');
insert into firend_tbl_ll values('1005','1003','18/09/22','Y');


--insert.jsp
select NVL(max(member_no),0)+1 from member_tbl_ll

select to_char(sysdate,'yyyy/mm/dd') from dual

--select.jsp
select member_no, member_id, member_name, 
decode(member_grade,'S','특별','A','우수','B','일반'),
member_hobby, 
to_char(member_date,'yyyy.mm.dd') 
from member_tbl_ll
order by 2


--select2.jsp
select member_id, member_name, req_date
from member_tbl_ll natural join friend_tbl_ll
where member_no = '1001'



