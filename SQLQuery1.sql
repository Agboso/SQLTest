create database customer
use customer
create table customers
( ID int primary key identity(1,1),
  FirstName varchar(50),
  LastNmae varchar(50),
  Age int,
  City varchar(50)
)

select * from customers

drop table customers

insert into customers(FirstName, LastNmae, Age, City)
values ('Kelvin', 'Agboso', 21, 'Lasgidi');
insert into customers(FirstName, LastNmae, Age, City)
values ('Marcus', 'Crate', 11, 'Abuja');
insert into customers(FirstName, LastNmae, Age, City)
values ('Eric', 'Space', 56, 'Port');
insert into customers(FirstName, LastNmae, Age, City)
values ('Alex', 'Hunter', 34, 'Calabar');
insert into customers(FirstName, LastNmae, Age)
values ('Gene', 'Darnel', 40);
insert into customers(FirstName, LastNmae, Age)
values ('Kelvin', 'Agboso23', 21);
insert into customers(FirstName, LastNmae, Age)
values ('Kelvin', 'Agboso4', 21);

select FirstName, LastNmae from customers where LastNmae like 'Agboso%'
select FirstName, LastNmae from customers where LastNmae like 'Agboso_'

update customers
set LastNmae='Paul'
where FirstName='Marcus'

select * from customers

--this delect kelvin agboso
/*
delete from customers where LastNmae like 'Agboso__'*/

alter table customers
add City varchar (50)

update Customers
set City='Washington' where FirstName ='Marcus'

update customers
set City = 'New York'
where LastNmae = 'Agboso23'

select * from customers

--this delete 
/*
delete from customers
where Age = 21
and LastNmae = 'Agboso4'*/

alter table customers
add City varchar (50)

drop table customers

create table product
( ID int primary key identity(1,1),
ProductName varchar (50),
Price float
)

select * from product
drop table product
insert into product
(ProductName, Price) values ('BaseBal', 450);


insert into product
(ProductName, Price) values ('Bike', 99);


insert into product
(ProductName, Price) values ('Cane', 100);

insert into product
(ProductName, Price) values ('Book', 200)

delete from product where ProductID = 201

create table orders 
(
orderID int primary key identity(1,1),
orderDate datetime ,
customerID int, productID int
)
drop table orders
use customer
select * from customers
select * from product
select * from orders

insert into orders (orderDate, customerID, productID) values
(getdate(), 3, 4);
insert into orders (orderDate, customerID, productID) values
(getdate(), 1, 2);
insert into orders (orderDate, customerID, productID) values
(getdate(), 4, 4);
insert into orders (orderDate, customerID, productID) values
(getdate(), 3, 3);
insert into orders (orderDate, customerID, productID) values
(getdate(), 3, 9)

delete orders
where productID = 9

alter table orders
add foreign key (customerID) references customers(ID);
alter table orders
add foreign key (productID) references product(ID);

update customers
set LastNmae ='Internet' where FirstName = 'Kelvin'
select * from customers
select * from product
select * from orders

select * from orders as o
inner join product as p on o.productID=p.ID

select o.orderDate, p.productName, c.City
from orders as o
inner join product as p on o.productID=p.ID
inner join customers as c on o.customerID=c.ID

select customers.City, Product.productName, sum(product.Price) as Total, AVG(product.price) Average
from orders 
inner join product on orders.productID=product.ID
inner join customers on orders.customerID=customers.ID
group by customers.City, Product.productName


select customers.City, sum(product.price) as Total
from orders
inner join customers on orders.customerID=customers.ID
inner join product on orders.productID=product.ID
group by customers.City

select * from  customers
where Age= 21 and LastNmae = 'Internet'

select * from product
where price between 199 and 500

insert into customers (FirstName, LastNmae, Age, City)
values ('Kelvin', 'Agboso', 56, 'Kano')

select distinct FirstName from customers

select sum(price) as Total_Price, avg(price) as Average, max(price) as Maximum, min(price) as Minimum, count(price) as Count
from product
 

select * from  customers
where LastNmae like ('%e_')

select FirstName, City, FirstName + city as FrstName_City
from  customers
order by FirstName + city desc

select * from customers
where FirstName<>'Kelvin'

select * from customers
where FirstName != 'Kelvin' and FirstName!= 'Alex'

select Price, sum(price) as "Product Counted" from product group by Price

select FirstName, LastNmae from customers
group by FirstName, LastNma

select * from product
group by price

insert into orders (orderdate, customerID, productID) values (getdate(), 4, 3)
update orders
set productID=4
where customerID = 3

select product.* from orders
left join customers on orders.customerID=customers.ID
 join product on orders.productID=Product.ID

select FirstName, ProductName, sum(price) Summation
from orders
inner join customers on orders.customerID=customers.ID
inner join product on orders.productID=Product.ID
GROUP BY FirstName, ProductName
having max(price) < 200
order by FirstName desc

select count(FirstName)as Numbers from customersect 

select FirstName , City,
case when city = 'Abuja' then 'yes'
     when city = 'Calabar' then 'Oh Yeah'
else '' end as 'From Abuja/Cally'
from customers
order by 3

select * from orders

select city, FirstName + LastNmae as Name,
CASE WHEN Age >20 and Age <= 40 THEN 'FirstNamew'
     WHEN Age > 55 and Age <=100 THEN 'FirstNamew'
	ELSE 'Opting' END AS 'We need help'
from customers

select * from product

select  CASE WHEN ProductName in ('cane', 'Book', 'Bike') THEN 'Play'
		ELSE 'others' END AS 'More_Need',
		sum(Price) as Summation
	from product
	group by ProductName

		select * from customers

select CASE WHEN Price > 100  THEN ProductName
else 'Opting' end as 'playing'
from product

select case when FirstName < 'F' then 'A - E'
            when FirstName >= 'F' then 'F - Z'
			else 'Null' end as Tryna,
			count (1) as Counting
from customers
	group by FirstName

select count(customers.Age) as 'Age Counting', count(product.price) as 'Price Counting'
from orders
right join customers on orders.customerID=customers.ID
left join product on orders.productID=product.ID


select * from customers;
select * from product;
select * from orders; 

select* from orders
inner join product on orders.productID=product.ID and ProductName = 'cane'

select * from customers union all select * from customers

select distinct FirstName from customers
where FirstName = 'Kelvin'
and 
where Age = 56
from customers 

select FirstName + '-' + cast(Age as varchar(50)) as 'Peopl on Board' from customers

select '('|| LastNmae ||' , '|| FirstName ||')' as POSS
from cutommers

select SUBSTRING(LastNmae, 3, 2), upper(LastNmae) as LastNmae_Upper
from customers

select concat(FirstName,' ',LastNmae,'-',Age) as 'New Table'
from customers

select * from product

select Sum(product.Price), max(price), count(price)
from product


