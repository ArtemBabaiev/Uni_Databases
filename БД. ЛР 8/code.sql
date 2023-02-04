-- 1.1.1
/*
insert into Goods
values (9, "109", "Олія", 45, "л", 100);
*/

-- 1.1.2
/*
insert into Goods
values (null, "108", "Борошно", 36, "кг", 100);
*/

-- 1.1.3
/*
insert into Goods (goodCode, name, price, unit)
values ("110", "Іграшка", 150, "шт.");
*/

-- 1.1.4
/*
insert into goods (goodCode, name, price, unit)
select customerCode, surname, 100+idCustomers, "шт."
from customers;
*/

-- 1.2.1
/*
update Goods 
set unit="л" order by idgoods desc limit 3;
*/

-- 1.2.2
/*
update Goods 
set name="Мінеральна вода" where name="Драгомирецька";
*/

-- 1.2.3
/*
update Goods
set name="Масло", price=24, unit="кг"
where idGoods=14;
*/

-- 1.2.4
/*
update Goods
set name="Йогурт", price=idGoods*3, unit="л"
where idGoods=13;
*/

-- 1.3
/*
delete from goods
where idGoods=11 or idGoods=12;
*/

-- 2.1
/*
insert into goods
select null, goodcode, "repit", 20, "кг", null 
from goods s where s.price > any(select price from goods) limit 2;
*/

-- 2.2
/*
delete from goods
where price > any(select costOfOrder from Orders);
*/

-- 2.3
/*
update goods
set price=price+10
where price <= (select avg(costOfOrder) from orders);
*/

-- 3.1
/*
create database LW8_DB;
use LW8_DB;
create table test_table
(id int auto_increment not null primary key,
data varchar(10) not null);
select * from test_table;
*/

-- 3.2
/*
alter table test_table
add extra varchar(30),
alter column data
set default "not null";
*/

-- 3.3
/*
drop table test_table;
*/

-- 4
/*
create table task4
(id int not null,
 data1 varchar(30) unique,
 data2 varchar(30),
 data3 int default 404,
 data4 varchar(30),
 check(data3>0 or data4!="word"),
 unique(id, data2));
*/

