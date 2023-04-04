drop database restaurant_management_system;
create database restaurant_management_system;

drop table MENU;
drop table CUSTOMER;
drop table ORDERS;
drop table INVENTORY;
drop table WORKERS;
drop table TABLES;
drop table MANAGER;
drop table PAYMENTS;

create table MENU(
	Name varchar(100) PRIMARY KEY,
	Price int
);

insert into MENU values('Spring Roll',150),
('Chilly Paneer',250),
('Chaap',200),
('Noodles',150),
('Honey Chilli Potato',200),
('Veg Momos',80);

create table CUSTOMER(
	Customer_Id int PRIMARY KEY,
	customer_name varchar(25),
	Contact varchar(20)
);

insert into CUSTOMER values(521,'Dhruv',9999999999),
(522,'Rahul',8888888888),
(523,'Chetan',7777777777),
(524,'Sachin',6666666666),
(525,'Virat',5555555555),
(526,'Hardik',4444444444),
(527,'Prateek',9899999999),
(528,'Naina',8988888888),
(529,'Ananya',7977777777),
(530,'Yash',6866666666),
(531,'Vicky',5955555555),
(532,'Sid',4844444444);

create table ORDERS(
	Order_No int PRIMARY KEY,
	Customer_Id int ,
	Name varchar (100),
	Quantity int,
	Amount int,
	Date date
	);

	insert into ORDERS values(1,521,'Spring Roll',3,450,'2023-03-03'),(2,522,'Chaap',2,400,'2023-03-03'),(3,523,'Chilly Paneer',3,750,'2023-03-03'),(4,524,'Honey Chilli Potato',1,200,'2023-03-03'),(5,525,'Noodles',2,300,'2023-03-03'),(6,526,'Veg Momos',3,240,'2023-03-03'),(7,527,'Noodles',3,450,'2023-03-03'),(8,528,'Chilly Paneer',1,250,'2023-03-03'),(9,529,'Chaap',3,600,'2023-03-03'),(10,530,'Spring Roll',5,750,'2023-03-03'),(11,531,'Chilly Paneer',4,1000,'2023-03-03'),(12,532,'Veg Momos',1,80,'2023-03-03');


create table INVENTORY(
	Stock_Id varchar(5) PRIMARY KEY,
	Name varchar(30) ,
	Quantity varchar(10) ,	
	Supplier varchar(25) 
);
insert into INVENTORY values('A1','Paneer',100,'Asian Dairy'),
('A2','Noodles',50,'Deep Dept store'),('A3','Maida',20,'Deep Dept store'),('A4','Onion',150,'Hari Om Veggies'),('A5','Potato',60,'Hari Om Veggies'),('A6','Rolls',80,'Frozen Rollsey'),('A7','Chaap',50,'Asian Dairy'),('A8','Cabbage',60,'Hari Om Veggies');

create table WORKERS (
	Name varchar(100) ,
	Salary varchar(20) ,	
	Employee_Id varchar(20) PRIMARY KEY,
	Post varchar(30),
	Date_of_joining date ,
	Contact_Number varchar(15)
);

Insert into WORKERS Values('Himesh',15000,'C1','Cook','2021-02-23',999997776688),('Ramesh',15000,'C2','Cook','2022-03-03',999997776666),('Gangaram',15000,'C3','Cook','2021-11-04',999997776677),('Prabh',15000,'C4','Cook','2023-01-11',999997776699),('Vishesh',25000,'HC1','SeniorCook','2021-02-23',999997776622);

create table TABLES(
	Table_Number int PRIMARY KEY,
	No_of_members int ,
	Customer_Id int
);
INSERT INTO TABLES Values(2,5,521),(3,4,522),(4,3,523),(5,2,524),(1,5,525),(8,3,526),(12,5,527),(11,2,528),(10,2,529),(9,3,530),(7,2,531),(6,4,532);

create table MANAGER(
	Manager_Id int PRIMARY KEY,
	Fname varchar(15) ,
	Lname varchar(15) ,
	Contact varchar(20),
 	Age int ,
  	Salary int ,
	Sex char(1) ,
	Join_Date date 
);
INSERT INTO MANAGER Values 
(1,'Rishi','Rakheja',987654329999,52,30000,'M','2021-02-23'),(2,'Seema','Taneja',983213329999,38,30000,'F','2021-02-23')

create table PAYMENTS(	
	Order_No int PRIMARY KEY,
	Payment_Method varchar(25) 
);
INSERT INTO PAYMENTS Values
(1,'Cash'),(2,'UPI'),(3,'Paytm'),(4,'Cash'),(5,'UPI'),(6,'UPI'),(7,'Cash'),(8,'Card'),(9,'Paytm'),(10,'UPI'),(11,'Cash'),(12,'UPI');




