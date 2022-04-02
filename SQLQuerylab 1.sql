CREATE DATABASE SQLLAB1;
USE SQLLAB1;


drop database SQLLAB1;

create table Student(
stuID INT NOT NUll,
stuName VARCHAR(50) NOT NULL,
stuAddress VARCHAR(50),
stuYear INT DEFAULT 1)

drop table Student

create table Student(
stuID INT NOT NUll,
stuName VARCHAR(50) NOT NULL,
stuAddress VARCHAR(50),
stuYear INT DEFAULT 1,
CONSTRAINT pkStudent
PRIMARY KEY(stuID))

create table Module(
Code INT NOT NULL,
Title VARCHAR(50) NOT NULL,
Exam VARCHAR(50) NOT NULL,
Assignment VARCHAR(50),
Credits INT DEFAULT 0,
CONSTRAINT courseCode
PRIMARY KEY(Code))

drop table Module

create table Module(
modCode CHAR(6) NOT NULL,
Title VARCHAR(50) NOT NULL,
Exam VARCHAR(50) NOT NULL,
Assignment VARCHAR(50),
Credits INT DEFAULT 0,
CONSTRAINT courseCode
PRIMARY KEY(modCode))


CREATE TABLE Enrolment(
stuID INT NOT NULL,
modCode CHAR(6) NOT NULL,
enrAssignment INT,
enrExam INT,
CONSTRAINT enrPK
	PRIMARY KEY (stuID, modCode),
CONSTRAINT enrStu FOREIGN KEY(stuID)
	REFERENCES Student(stuID),
CONSTRAINT enrMod FOREIGN KEY(modCode)
	REFERENCES Module (modCode))


	insert into Enrolment values ('1','csc110','5','25');
	insert into Enrolment values ('2','csc111','45','76');
	insert into Enrolment values ('3','csc112','34','67');
	insert into Enrolment values ('4','csc113','32','65');
	insert into Enrolment values ('2','csc112','67','36');
	insert into Enrolment values ('3','csc113','83','95');

ALTER TABLE Student
ADD Degree VARCHAR(50)

ALTER TABLE Student
DROP COLUMN Degree

ALTER TABLE Module
ADD CONSTRAINT
uniqExam UNIQUE (Exam)

//shows error here
insert into Module values ('csc110','DBMS','DBMSEXAM','DBMSASSIGNMENT',3.2),('csc111','TOC','DBMSEXAM','TOCASSIGNMENT',3.3);

ALTER TABLE Module
DROP CONSTRAINT uniqExam

insert into Module values ('csc110','DBMS','DBMSEXAM','DBMSASSIGNMENT',3.2);
insert into Module values ('csc111','OS','OSEXAM','OSASSIGNMENT',3.3);
insert into Module values ('csc112','CN','CNEXAM','CNASSIGNMENT',3.4);
insert into Module values ('csc113','AI','AIEXAM','AIASSIGNMENT',3.5);




/*Insert*/
insert into Module values ('csc110','DBMS','DBMSEXAM','DBMSASSIGNMENT',3.2),('csc111','TOC','DBMSEXAM','TOCASSIGNMENT',3.3);

insert into bidhyarthi values (1,'Anderson','15 High St',1),(2,'Brooks','27 Queen''s Rd',3),(3,'Chen','Lenton Hall',5),(4,'Mlen','Patan Hall',6),(5,'Huiwei','Pulchowk Hall',5);

/*do insert update(remaining) and delete for student*/

/*delete*/
DELETE FROM Enrolment WHERE stuID=4;
insert into Student values (2,'Brooks','27 Queen''s Rd',3);

/* Update*/
update Enrolment set enrAssignment='88' where stuID = 2;

/*Select*/
SELECT * FROM bidhyarthi;
SELECT stuName FROM bidhyarthi;

sp_rename 'Student' , 'bidhyarthi'




