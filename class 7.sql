-- what are constraints?
-- contraints are rules and regulations that do not allow invalid data entry in my table

-- not null constraint
create database regexdb;
use regexdb;
create table test(id int);
insert into test values(10),(11),(10);

create table test2(id int not null);
insert into test2 values(10),(11),(10),(null); -- this null will give error

-- unique constraint
create table test3(id int unique);
insert into test3 values(10),(11),(10); -- this will give error to add unique values only
-- if any value is not given it will consider it null

-- default constraint
create table test4(id int,gender varchar(20) default 'male');
insert into test4(id) values(10);
select * from test4; -- by default it will take male,you can add manually

-- check constraint
create table test5 (id int check (id>5),gender varchar(20));
insert into test5 (id) values(3); -- this will give error 
select * from test5;
-- check is not limited to comparirsion only
create table test6 (id int check (id>5),gender varchar(20),constraint db_test6_gender_chk
check(gender in ('male' ,'female') ) ); -- check
insert into test6 (id,gender) values(11,'male'); 
insert into test6 (id,gender) values(67,'trans');  -- we gave error here customized error

-- primary key
create table test7(id int primary key);
insert into test7 values(10),(11),(10);  -- primary key is unique now it will give error
select * from test7;

-- forigen key
create table product(pid int primary key,pname varchar(20));
insert into product values(101,'iphone'),(102,'ipad');

create table orders(oid int,price int,pid int);
insert into orders values(1981,200,101),(1982,250,102),(1983,270,101),(1984,500,108);
select * from orders;

create table orders2(oid int,price int,pid int, foreign key (pid) references  product(pid));
insert into orders2 values(1981,200,101),(1982,250,102),(1983,270,101);
select * from orders2;

-- create 2 table employees (id pri key),emp name, emp email (unique)(constraint name),dept id(refers to depart table,foriegn key)
-- also create department table dept id (unique),dept name (check dept should be bio or physics)
-- in the depart table try to insert null in depart id column

create table department(dept_id int unique,dept_name varchar(30) ,check (dept_name='biology'
 or dept_name = 'physics'));
 
 insert into department values (11,'biology'), (12,'physics');

create table employees(emp_id int primary key,emp_name varchar(20),emp_mail varchar(50)  unique,dept_id int
, foreign key (dept_id)
 references department(dept_id) );
 
insert into employees values (1,'radha','abc@gmail.com',11),(2,'govind','abcd@gmail.com',12);
select * from employees;

 






