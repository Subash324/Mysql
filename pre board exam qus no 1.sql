create database pre_board;
use pre_board;
drop database pre_board

create table customer
( 
cno int,
cname varchar(20),
caddress varchar(20),
ccontact varchar(20),
primary key (cno));


insert into customer values (101,'Sudarsan','pulchowk',9849537213);
insert into customer values (102,'akash','dhapakhel',9849587213);
insert into customer values (103,'ansh','jaulakhel',9849598213);
insert into customer values (104,'raj','kalimati',9843637213);
insert into customer values (105,'rajesh','kirtipur',9849767213);
update customer set cname='david' where cno=104;

create table product
( 
pid int,
pname varchar(20),
price int,
quantity int,
primary key (pid));

insert into product values (577,'monitor',10000,50);
insert into product values (579,'mouse',500,100);
insert into product values (598,'cpu',16000,20);
insert into product values (588,'motherboard',600,40);
insert into product values (573,'keyboard',600,30);
insert into product values (571,'apple_mobile',60000,30);
update product set price=500 where pid =588;


create table purchase
(
cno int,
pid int,
foreign key (cno) references customer (cno) on delete cascade,
foreign key (pid) references product (pid) on delete cascade,
primary key (cno,pid));

insert into purchase values (101,577);
insert into purchase values (102,579);
insert into purchase values (103,598);
insert into purchase values (103,573);
insert into purchase values (104,588);
insert into purchase values (105,579);
insert into purchase values (102,573);
insert into purchase values (101,588);
insert into purchase values (103,579);
insert into purchase values (102,598);
insert into purchase values (101,571);
insert into purchase values (103,571);
insert into purchase values (105,571);


/*a*/

select pname from product where price=500;
/*b*/
select cname from customer,product where pid=579; 
/*c*/
select sum(quantity) from purchase,product where cno=104 
/*d*/
update product set price=price+(0.05*price) 
/*e*/

select price*quantity from product where pid=571