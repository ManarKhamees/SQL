create table Customers(
name varchar(20),
gender varchar(20),
location varchar(20),
customer_id int Primary Key,
phone_number int 
);


create table Orders(
order_id int Primary Key,
order_date date,
total_price decimal(10, 2)
);


create table Products(
name varchar(20),
product_id int Primary Key,
price decimal(10, 2)
);


create table Employees(
name varchar(20),
employee_id int Primary Key,
salary int 
);


Insert into Customers values('Manar', 'female', 'Irbid', 5, 0784567890);
Insert into Orders values(4, '2024-10-17', 44.50);
Insert into Products values('Hat', 3, 4.00);
Insert into Employees values('Ali', 2, 450);