create database Customer

use Customer

create table Customers 
( Id int primary key identity(1,1),
  FirstName varchar(50),
  LastName varchar(50),
  Age int,
  Country varchar(50)
)

insert into Customers (FirstName, LastName, Age, Country) values ('kelvin', 'Agboso', 12, 'Lagos');
insert into Customers (FirstName, LastName, Age, Country) values ('kelvin', 'Agboso3', 23, 'New York');
insert into Customers (FirstName, LastName, Age, Country) values ('Mike', 'Cash', 5, 'London');
insert into Customers (FirstName, LastName, Age, Country) values ('John', 'Israel', 67, 'India');
insert into Customers (FirstName, LastName, Age, Country) values ('Tolu', 'Williams', 45, 'Dubia');

select * from Customers where FirstName = 'Kelvin' and LastName like 'Agboso_'

update Customers set FirstName = 'Judy' where LastName = 'Agboso6' 
update Customers set Age = 21 where LastName = 'Williams' 
update Customers set Country = 'New York' where FirstName = 'Barry'
update Customers set Country = 'India' where FirstName = 'Mike'
update Customers set Country = 'England' where FirstName = 'John'
update Customers set Country = 'Canada' where FirstName = 'Tolu'

delete Customers where FirstName = 'Judy' and LastName = 'Agboso6'

alter table Customers add Country varchar(50)

drop table Customers
 
create table Products
(
Id int primary key identity(1,1),
ProductName varchar(50),
Price float
)

insert into Products (ProductName, Price) values ('BaseBall', 56.9);
insert into Products (ProductName, Price) values ('TennisBall', 203);
insert into Products (ProductName, Price) values ('BasketBall', 407.89);
insert into Products (ProductName, Price) values ('FanShirt', 899.9);
insert into Products (ProductName, Price) values ('Bat', 6.3);

create  table Orders
(
  OrderID int primary key identity(1,1),
  OrderDate datetime,
  CustomerID int, 
  ProductID int
)

insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 1, 2);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 3, 1);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 5, 5);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 5, 4);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 2, 2);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 4, 3);
insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 2, 5);

alter table Orders
add foreign key (CustomerID) references Customers(Id)

alter table Orders 
add foreign key (ProductID) references Products(Id)

select o.*, p.ProductName, c.Country from orders o
inner join Products p on o.ProductID=p.Id
inner join Customers c on o.CustomerID=c.Id 

select c.Country, p.ProductName, sum(p.price) as Total, Avg(p.price) as Average from Orders as o
inner join Products p on o.OrderID=p.Id
inner join Customers c on o.OrderID=c.Id
group by c. Country, p.ProductName

update Customers set Country = 'Rwanda' where LastName = 'Williams'

insert into Customers (FirstName, Age, Country) values ('Rick', 29, 'Greece')

select Customers.*, Products.* from Orders 
full outer join Customers on Orders.CustomerID=Customers.ID
full join Products on Orders.ProductID=Products.ID

select * from Orders right join Customers on Orders.CustomerID=Customers.ID

select * from customers
/*where LastName in ('Williams','Agboso') or FirstName in ('Rick', 'Mike')*/
where Age between 20 and 60

select count(distinct FirstName) as Count_F from Customers 

select avg(Price) as Average_Price, sum(Price) Total_Price from Products

select * from Customers where LastName like 'Agbo%'  Age between 10 and 20

select FirstName + LastName as First_Last from Customers order by FirstName + LastName 

select FirstName + ' ' + LastName as First_LastNmae from customers

select * from Customers
select * from Products
select * from Orders