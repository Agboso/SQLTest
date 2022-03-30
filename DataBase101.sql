create database Talisman
use Talisman
create table Customers (
FirstName varchar(50),
LastName varchar(50),
Age int,
)
insert into Customers (FirstName,LastName,Age) values ('Agboso', 'Kelvin', 120)
insert into Customers (FirstName,LastName,Age) values ('Agboso34', 'Kelvin', 120)
insert into Customers (FirstName,LastName,Age) values ('Mike', 'Thomas', 120)
insert into Customers (FirstName,LastName,Age) values ('Derrick', 'Rose', 120)
select FirstName, LastName from Customers where FirstName like 'Agboso__'
update Customers set Age = 22 where LastName = 'Thomas'
delete from Customers where FirstName like 'Agboso__'
alter table Customers add City varchar (50)
update Customers set City = 'Lagos' where LastName = 'Kelvin'
update Customers set City = 'New York' where LastName = 'Thomas'
update Customers set City = 'Denver' where LastName = 'Rose'
drop table Customers
Create table Customers (ID int primary key identity (1,1), FirstName varchar (50), LastName varchar (50), Age int, City varchar (50))
insert into Customers (FirstName, LastName, Age, City) values ('Kelvin', 'Agboso', 45, 'Lagos')
insert into Customers (FirstName, LastName, Age, City) values ('Tope', 'Meme', 20,'Kansa')
insert into Customers (FirstName, LastName, Age, City) values ('Namomi', 'Maroh', 16, 'Washington')
Create table Products (id int primary key identity (1,1), ProductName varchar (50), Price float)
insert into Products (ProductName, Price) values ('Benz', 250)
insert into Products (ProductName, Price) values ('Toyota', 90)
insert into Products (ProductName, Price) values ('Ferrari', 300)
insert into Products (ProductName, Price) values ('Honda', 95)
insert into Products (ProductName, Price) values ('Volks', 100)
insert into Products (ProductName, Price) values ('Lotus', 270)
create table Orders (OrderID int primary key identity (1,1), OrderDate Datetime, CustomerID int, ProductID int)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 3, 5)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 1, 3)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 3, 6)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 2, 1)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 1, 4)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 2, 2)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 3, 2)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 1, 1)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 3, 3)
insert into Orders (OrderDate, CustomerID, ProductID) values (GETDATE (), 2, 5)
alter table Orders add foreign key (CustomerID) references Customers(ID)
alter table Orders add foreign key (ProductID) references Products(ID) 
select * from Orders inner join Products on Orders.ProductID=Products.ID 
inner join Customers on Orders.CustomerID=Customers.ID
select o.OrderDate, c.City, sum(p.Price) as Summation, Avg(c.age) as AverageAge from Orders as o
inner join Products as p on o.ProductID=p.id
inner join Customers as c on o.CustomerID=c.ID
group by o.OrderDate, c.City

select * from Customers
select * from Products
select * from Orders