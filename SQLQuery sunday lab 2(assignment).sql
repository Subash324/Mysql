create database SQLLAB2assignment;
use SQLLAB2assignment;

create table Track
(cid char(5),
num int,
title varchar(20),
[time] int,
aid char(5));

drop table Track;
insert into track values
('1',1,'violent',239,'1'),
('1',2,'every girl',410,'1'),
('1',3,'breather',217,'1'),
('1',4,'part of me',279,'1'),
('2',1,'star',362,'1'),
('2',2,'teaboy',417,'2')

create table cd
(cid char(5),
title varchar(20),
price decimal(8,2));

drop table cd;

insert into cd values
('1','mix',9.99),
('2','compilation',12.99)

create table artist
(aid char(5),
name varchar(20));




insert into artist values
('1','stellar'),
('2','cloudboy')

SELECT title FROM cd

SELECT title FROM track WHERE ([time] >= 300)

SELECT name FROM artist, track, cd where (artist.aid = track.aid ) AND (track.cid =cd.cid) AND (cd.title = 'compilation')

select name from artist inner join track on (artist.aid = track.aid) inner join cd on (track.cid =cd. cid) AND (cd.title = 'compilation')

delete from  track

select a.name as artist_name from artist as a inner join track as t on a.aid = t.aid inner join cd as c on t.cid =c.cid  and c.title ='compilation'

select *from cd CROSS JOIN artist;

SELECT Track.num, cd.price from Track,cd where track.cid=cd.cid;

SELECT Track.num, cd.price from Track FULL OUTER JOIN cd ON track.cid=cd.cid;

select ALL title from Track where time<=300;

SELECT DISTINCT title FROM TRACK;


create table employee
( id int identity primary key,
[name] varchar(20));

insert into employee values
(123,'john'),
(124, 'mary')

create table worksin
( id int,
dept varchar(20),
foreign key(id) references employee(id));

insert into worksin values
(123, 'marketing'),
(124,'sales'),
(124, 'marketing')

select e.id as empid, e.name, w.dept from employee e worksin w where (e.id = w.id)


drop table worksin
drop table employee