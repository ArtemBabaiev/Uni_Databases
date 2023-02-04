USE OnlineShop;

/*
1.1)SELECT * FROM Goods LIMIT 4;
1.2)SELECT * FROM Goods LIMIT 3,4;
2)select g.IdGoods, g.name, s.Goods_id, s.sellСode from Goods g, Sells s
   where s.Goods_Id=g.IdGoods;
3)select g.IdGoods, g.name, s.Goods_id, s.sellСode, s.orders_id, o.idOrders, o.orderCode 
   from Goods g, Sells s, orders o
   where s.Goods_Id=g.IdGoods and s.orders_id=o.idOrders;
4)SELECT f.name, s.name, f.unit from Goods f, Goods s where f.unit=s.unit;
5)SELECT f.name, s.name, f.unit from Goods f, Goods s 
   where f.unit=s.unit and f.name<s.name;
6)select orderCode, costOfOrder,(select avg(price) from goods) as sub from orders
   where costofOrder > (select avg(price) from goods);
7)select orderCode, costOfOrder,
   (select avg(price) as avg from goods where costofOrder>price) as sub 
   from orders where costofOrder > 
   (select avg(price) as avg from goods where costofOrder>price);
8.1)select firstname from Customers 
     where idcustomers in(select customers_id from orders);
8.2)select name, price from goods
	 where price > all(select price from goods where unit="кг");
8.3)select name, price from goods
     where price > any(select price from goods where unit="л");
8.4)select idCustomers from customers
     where exists(select customers_id from orders where customers_id=idcustomers);
9.1)select g.IdGoods, g.name, s.Goods_id, s.sellСode, s.orders_id
    from Goods g
    left outer join Sells s on s.Goods_Id=g.IdGoods;
9.2)select o.orderCode, o.customers_id, c.idCustomers, c.firstname from orders o
     right outer join customers c on o.customers_id=c.idCustomers;
9.3)select idCustomers, firstname from customers
     union
     select idGoods, name from Goods;
*/