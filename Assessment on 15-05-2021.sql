create database test;

use test;

Question 1
create table countries(country_id int auto_increment,country_name varchar(20),region_id int,primary key(country_id));

Question 2
create table jobs(job_id varchar(10) not null,job_title varchar(20) not null,min_salary decimal(6,0),max_salary decimal(6,0), check (max_salary>25000) ,primary key(job_id));

drop table jobs;

insert into jobs values(1,'HR',10000,30000),(2,'IT',15000,35000);

select * from jobs;

insert into jobs values(3,'Insurance',10000,20000);

Question 3
create table job_history(
employee_id int not null primary key,
start_date date not null,
end_date date not null,
job_id varchar(10) not null,
department_id int,
foreign key(job_id) references jobs(job_id));


Question 4

create table student_info(
stud_id int auto_increment,
stud_code int,
stud_name varchar(20),
subject varchar(20),
marks int,
phone varchar(20),
primary key(stud_id));

drop table student_info;

insert into student_info(stud_code,stud_name,subject,marks,phone) values(101,'Mark','English',68,34545693537),
(102,'Joseph','Physics',70,98763047846),
(103,'John','Maths',70,97653269756),
(104,'Barack','Maths',90,87698375629),
(105,'Rinky','Maths',85,67534108783),
(106,'Adam','Science',92,79740362863),
(107,'Andrew','Science',83,56917398401),
(108,'Brayan','Science',85,75234156570),
(110,'Alexandar','Biology',67,2347346438);

select * from student_info;

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_merit_students`()
BEGIN
	select * from student_info where marks > 70;
    select count(stud_code) AS Total_student from student_info;
END

Question 5
create table kids(
kid_name varchar(20),
kid_age int
);

select * from kids;

insert into kids values('Priya',10),('Kavya',12),('Ram',14);

update school set age=19 where kid_name=Priya;

CREATE DEFINER=`root`@`localhost` TRIGGER `test1`.`kids_AFTER_UPDATE` AFTER UPDATE ON `kids` FOR EACH ROW
BEGIN
	delete from kids where new.kid_age>18;
END








create database test1;

use test1;

Question 1
create table jobs(
job_id varchar(10) not null,
job_title varchar(20) not null,
job_duration int);


Question 2

create table countries(
country_id int auto_increment,
country_name varchar(20),
check (country_name in('India','Italy','china')),
region_id int,
primary key(country_id));

Question 4

create table employee_detail(
ID int auto_increment,
Name varchar(20),
Email varchar(50),
Phone varchar(20),
City varchar(20),
Working_hours int,
primary key(ID)
)

insert into employee_detail(Name,Email,Phone,City,Working_hours) values
('Peter','peter@javatpoint.com',49562959223,'Texas',12),
('Suzi','suzi@javatpoint.com',70679834522,'California',10),
('Joseph','joseph@javatpoint.com',09896765374,'Alaska',14),
('Alex','alex@javatpoint.com',97335737548,'Los Angeles',9),
('Mark','mark@javatpoint.com',78765645643,'Washington',12),
('Stephen','stephen@javatpoint.com',986345793248,'New York',10);

select * from employee_detail;

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_excellent_employee`()
BEGIN
	select * from employee_detail where Working_hours > 10;
    select count(ID) AS Total_Employee from employee_detail;
END


Question 3
Create Table employees ( 
employee_id decimal(6,0) NOT NULL PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(25), 
email varchar(25), 
phone_number varchar(20), 
hire_date date, 
job_id varchar(10), 
salary decimal(8,2) , 
commission decimal(2,2) , 
manager_id decimal(6,0), 
department_id decimal(4,0) , 
foreign key (department_id) references  departments(department_id),
foreign key (manager_id) references  departments(,manager_id)
);

create table departments(
department_id decimal(4,0) primary key not null, 
department_name varchar(30),
manager_id decimal(6,0) not null, 
location_id decimal(4,0) );


Question 5

create table school(Id int,name varchar(20),grade int);

insert into school values(1,'Ramya',10),(2,'Anu',12);

insert into school values(3,'Anupama',11),(4,'Logi',14);

select * from school;

drop table school;

update school set grade=15 where id=2;

CREATE DEFINER=`root`@`localhost` TRIGGER `test1`.`school_AFTER_UPDATE` AFTER UPDATE ON `school` FOR EACH ROW
BEGIN
	delete from school where new.grade>12;
END










