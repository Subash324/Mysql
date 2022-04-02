create database sqllab2;
use sqllab2;
 drop database sqllab2;
create table student (
 stuid varchar(10),
first_name varchar(20),
last_name varchar(20)
 primary key(stuid));

 insert into student values ('s103','john','smith');
 insert into student values ('s104','marry','jones');
 insert into student values ('s105','jane','brown');
 insert into student values ('s106','mark','jones');
 insert into student values ('s107','john','brown');

 create table grade(
 stuid varchar(10),
 code varchar(10),
 mark int,
 primary key(stuid,code),
 foreign key(stuid) references student(stuid) on delete cascade,
 foreign key(code) references course(code) on delete cascade);

  insert into grade values ('s103','DBS','72');
  insert into grade values ('s103','IAI','58');
  insert into grade values ('s104','PR1','68');
  insert into grade values ('s104','IAI','65');
  insert into grade values ('s106','PR2','43');
  insert into grade values ('s107','PR1','76');
  insert into grade values ('s107','PR2','60');
  insert into grade values ('s107','IAI','35');


 create table course(
 code varchar(10),
 title varchar(25),
 primary key(code));

 
  insert into course values ('DBS','database systems');
  insert into course values ('PR1','programming 1');
  insert into course values ('PR2','programming 2');
  insert into course values ('IAI','intro to AI');

  SELECT ALL last_name FROM STUDENT

  SELECT DISTINCT LAST_NAME FROM STUDENT

  SELECT *FROM GRADE WHERE MARK>= 60


  SELECT DISTINCT STUID FROM GRADE WHERE MARK>= 60

  SELECT STUID,MARK FROM GRADE WHERE CODE= 'IAI' AND MARK>=40

  /*JOIN USE NAGARIKANA 2 OTA TABLE BATA SELECT GAREKO*/
  SELECT FIRST_NAME,LAST_NAME,MARK FROM STUDENT,GRADE WHERE (STUDENT.STUID=GRADE.STUID) AND (MARK>=40)

