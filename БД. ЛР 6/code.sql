USE onlineShop;
/*
select count(distinct unit) from goods;
select sum(price) from goods;
select avg(quantity) from goods;
select MAX(price) from goods;
select MIN(price) from goods where idGoods>3;

select count(price+quantity) from goods;
select sum(price*quantity) from goods;
select avg(price*quantity) from goods;
select MAX(price+quantity) from goods;
select MIN(price*quantity) from goods where idGoods>=3;

select unit, sum(quantity) as quant from goods group by unit;
select unit, quantity from goods group by unit, quantity;

select name, price*quantity as prod from goods having prod>500;

select name, price*quantity as prod from goods;
select name, "ціна",price, " ₴", from goods;
select unit,"середня ціна", avg(price) from goods group by unit;

select idgoods, name from goods order by name;
select idgoods, name, quantity from goods order by quantity,name ;
select unit, sum(quantity) from goods group by unit order by quantity;
select name, idGoods, price from goods order by 3;
*/