create database myinfo;
drop table department;
create table department(departmentid int not null,departmentname char(10));
insert into department values('1','ece');
insert into department values('2','cse');
insert into department values('3','it');
insert into department values('4','eee');
delete from department where departmentid=4;
use myinfo;
create table department(departmentid int not null,departmentname char(10));
select *from department;
delete from department where departmentid=4;
insert into department values('3','it');
insert into department values('4','eee');
select *from department;
insert into department values('5','me');
create table student(id int primary key auto_increment,studentname varchar(50),email varchar(50),phonenum varchar(50),year int,departmentid int,cgpa float);
insert into student values('1','varshi','varshi@gmail.com','4587963210','2','1','9.2');
insert into student values('vinish','vinish@gmail.com','4587964510','1','3','7.2');
drop table student;
create table student(id int auto_increment,
studentname varchar(50),
email varchar(50),
phonenum varchar(50),
studentyear int,
departmentid int,
cgpa float,
primary key(id));
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('varshi','varshi@gmail.com','4587963210','2','1','9.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('vinish','vinishi@gmail.com','4587453210','3','3','7.2');
select *from student;
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('sowmi','sowmi@gmail.com','4587123210','3','4','7.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('varsha','varsha@gmail.com','4587453210','2','1','7');
select *from student;
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('abi','abi@gmail.com','4587121110','2','1','8.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('nivi','nivi@gmail.com','4557453210','1','3','8');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('sowmya','sowmya@gmail.com','4587123210','3','3','6.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('sindhu','sindhu@gmail.com','4580053210','1','1','7');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('thangam','thangam@gmail.com','4587121210','1','2','7.6');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('pandi','pandi@gmail.com','45854453210','3','5','6.9');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('kalai','kalai@gmail.com','4587123210','4','5','7.9');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('poorvi','poorvi@gmail.com','8577453210','2','5','8.6');insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('sowmi','sowmi@gmail.com','4587123210','3','4','7.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('ravee','ravee@gmail.com','4587553210','5','3','6.7');insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('sowmi','sowmi@gmail.com','4587123210','3','4','7.2');
insert into student (studentname,email,phonenum,studentyear,departmentid,cgpa) values('padhu','padhu@gmail.com','9587453210','2','1','8');
select *from student;
create table employee(id int auto_increment,
empname varchar(50),
email varchar(50),
phonenum varchar(50),
role varchar(50),
departmentid int,
salary int,
primary key(id));
insert into employee(empname,email,phonenum,role,departmentid,salary) values('padhma','padhma@gmail.com','9587453211','clerk','1','8000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('padhmavathi','padhmav@gmail.com','9589453211','professor','4','28000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('pandiyan','pandii@gmail.com','9587003211','sysadmin','3','18000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('thangam','thangu@gmail.com','95874113211','clerk','1','7000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('chitra','chithu@gmail.com','9589453244','professor','2','30000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('gandhi','gandhi@gmail.com','9587003233','sysadmin','5','15000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('ram','ramu@gmail.com','9777453211','clerk','1','10000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('vignesh','vigu@gmail.com','5589453211','professor','4','40000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('dinesh','dinu@gmail.com','9457003211','sysadmin','3','19000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('nandhu','nandhu@gmail.com','9589453211','clerk','2','8500');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('geevi','gv@gmail.com','9589457511','professor','5','50000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('gokul','gokul@gmail.com','9587153211','sysadmin','4','25000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('sanjay','sanju@gmail.com','9587445211','clerk','2','9400');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('madhesh','madhu@gmail.com','9587453211','professor','3','45000');
insert into employee(empname,email,phonenum,role,departmentid,salary) values('sugan','sugu@gmail.com','9587003521','sysadmin','3','20000');
select *from employee;
select *from employee where role='professor';
select *from student where cgpa>7.5;
select *from student where studentyear=1;
select *from employee where role='clerk' and departmentid=4;
select *from student where studentname like 'r%';
select *from employee where role='professor' and empname like 'r%q';
select *from employee where role='professor' and salary  between 10000 and 30000;
select *from student where cgpa>8;
select  role,avg(salary) from employee group by role;
select  role,count(*) from employee group by role;
select *from employee where salary=(select max(salary) from employee where role='professor');
select *from employee where role='professor'
                      order by salary desc
                      limit 1;
select *from employee where salary=(select min(salary) from employee where role='clerk');
select phonenum,email from student where cgpa<5;
select *from student where email like '%gmail%';
select department.departmentname,count(*)from student inner join department on department.departmentid=student.departmentid 
                                                                         group by department.departmentname;
select department.departmentname,avg(cgpa) as avg_cgpa from student inner join department on department.departmentid=student.departmentid 
                                                                         group by department.departmentname
                                                                         order by avg_cgpa desc
                                                                         limit 1;
===========================================================================================================================================



















