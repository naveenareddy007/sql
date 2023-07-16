create database assignment;
use assignment;
 create table  salespeople(
 snum int(10) primary key,
 sname varchar(20) unique,
 city varchar(20),
 comm int
 );
 
 insert into salespeople values(1001,'peel','london',12);
 insert into salespeople values(1002,'serres','sanjose',13);
 insert into salespeople values(1004,'motika','london',11);
 insert into salespeople values(1007,'rafkin','barcelona',15);
 insert into salespeople values(1003,'axelrod','newyork',10);
 
 select * from salespeople;
  create table customers(
  cnum int (10) primary key,
  cname varchar(20),
  city varchar(20) not null,
  snum int(10),
  foreign key (snum) references salespeople(snum)
  );
  
  insert into customers values(2001,'hoffman','london',1001);
  insert into customers values(2002,'giovanni','rome',1003);
  insert into customers values(2003,'liu','sanjose',1002);
  insert into customers values(2004,'grass','berlin',1002);
  insert into customers values(2006,'clemens','london',1001);
  insert into customers values(2008,'cisneros','sanjose',1007);
  insert into customers values(2007,'pereira','rome',1004);
  
  
  select * from customers;
  
  create table orders(
  onum int(10) primary key,
  amt numeric(8,2),
  odate varchar(20),
  cnum int(10),
  snum int(10),
  foreign key(cnum) references customers(cnum),
  foreign key(snum) references salespeople(snum)
  );
  
  insert into orders values(3001,18.69,'3-10-1990',2008,1007);
  insert into orders values(3003,767.19,'3-10-1990',2001,1001);
  insert into orders values(3002,1900.10,'3-10-1990',2007,1004);
  insert into orders values(3005,5160.45,'3-10-1990',2003,1002);
  insert into orders values(3006,1098.16,'3-10-1990',2008,1007);
  insert into orders values(3009,1713.23,'4-10-1990',2002,1003);
  insert into orders values(3007,75.75,'4-10-1990',2004,1004);
  insert into orders values(3008,273.00,'5-10-1990',2006,1001);
  insert into orders values(3010,1309.95,'6-10-1990',2004,1002);
  insert into orders values(3011,9891.88,'6-10-1990',2006,1001);
  
  select * from orders;
  --1. count the number of salesperson whose name begin with'a'/'A'.
  select count(sname)
  from salespeople
  where snamme like 'a%';
  
  --2. display all the salesperson whose all orders worth is more than rs.2000.
  select sp.snum,sp.sname
  from salespeople as sp inner join orders as 0
  on sp.snum = 0.snum
  where amt > 2000
  group by sp.snum,sp.sname;
  
  --3.count the number of salesperson belonging to newyork
  select city,count(city)
  from salespeople
  where city = 'newyork'
  group by city;
  
  --4.display the number of salespeople belonging to london and belonging to paris.
  select city,count(city) as sp
  from salespeople
  where city in ('london','paris')
  group by city;
  
  --5.display the number of orders taken by each salesperson and their date of orders.
  select 0.snumsp.sname,count(0num)as num_orders,0.date
  from orders as 0 inner join salespeople as sp
  on 0.snum = sp.snum
  group by 0.snum,sp.sname,0.0date;
  
