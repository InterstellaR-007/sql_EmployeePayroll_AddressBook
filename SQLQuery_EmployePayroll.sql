--UC1

create database payroll_service

use payroll_service

--UC2

create table employee_payroll
(
	id int NOT NULL identity(1,1) PRIMARY KEY,
	name varchar(120) NOT NULL ,
	salary decimal(6,2) NOT NULL,
	start_date DATE NOT NULL
	)

Drop table employee_payroll

--UC3

Insert into employee_payroll ( name,salary,start_date) 
Values ('Anuj',200.00,'2014-08-09'),('Anuj2',345.00,'2014-01-03')

--UC4

select * from employee_payroll

--UC5

Select * from employee_payroll where name = 'Anuj'

Select * from employee_payroll where start_date between CAST('2014-01-06' as date) and GETDATE()

--UC6

alter table employee_payroll Add gender char(1) 
update employee_payroll set gender ='M' where name =  'Anuj2'
update employee_payroll set gender ='M' where name =  'Anuj'
Select * from employee_payroll

--uc7

select AVG(salary) from employee_payroll where gender ='M' group by gender
select gender,AVG(salary) from employee_payroll where gender ='M' group by gender
select gender,SUM(salary) from employee_payroll where gender ='M' group by gender

--uc8

alter table employee_payroll Add phone varchar(12)
alter table employee_payroll Add department varchar(20) 
alter table employee_payroll Add address varchar(200)

update employee_payroll set phone='918319293516',department='engg',address='xyz' where name='Anuj'
update employee_payroll set phone='918319294532',department='civil',address='abc' where name='Anuj2'
select * from employee_payroll

--uc9
alter table employee_payroll drop salary

alter table employee_payroll Add basic_pay decimal(6,2)
alter table employee_payroll Add deductions decimal(6,2) 
alter table employee_payroll Add taxable_pay decimal(6,2)
alter table employee_payroll Add net_pay decimal(6,2)

update employee_payroll set basic_pay =2000, deductions =100, taxable_pay = 100,net_pay = 1800 where name='Anuj'
update employee_payroll set basic_pay =2000, deductions =100, taxable_pay = 300,net_pay = 1600 where name='Anuj2'

--uc11

create table company(
	id int NOT NULL PRIMARY KEY,
	name varchar(120) NOT NULL
	)
Insert into company values (103,'Abram'),(109,'Lucy'),(100,'Hynix')
select * from company

create table employee(
	name varchar(120) NOT NULL,
	address varchar(255),
	phone varchar(12) NOT NULL
	)