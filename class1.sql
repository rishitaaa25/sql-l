show databases; -- will show all database inmysql
use sakila; -- use sakila as a database
show tables; -- show table to see all the table

-- row based database
-- select statement (dql)
select * from actor; -- * access all column
describe actor;  -- will give table info
select actor_id,first_name from actor; -- query to select particular columns
select actor_id, first_name,actor_id*5 from actor; -- can perform operatios here and no changes in actual data
select * from actor where actor_id=5; 
select actor_id from actor;
select * from actor where first_name='NICK'; -- no double quotes and while working on data do make sure to write data in case sensitive manner to avoid mistakes
select first_name,actor_id from actor;
select * from actor where actor_id<>5; -- <> this means not equal to
select * from actor where first_name='nick';
select * from actor where first_name = 'nick' or actor_id=84; -- use of and or(logical operators
select * from actor where first_name = 'nick' or actor_id != 46;
select * from actor where actor_id between 2 and 6; -- use of between always lower value to higher value 2 and 6 will be included
-- if you dont want to include values of 2 and 6 then
select * from actor where actor_id not between 2 and 6; --  not--> us range ke alawa
select * from actor where actor_id in (2,8,19); -- to extract from values you can directly use this
select first_name, actor_id from actor where last_name='genius';
select * from actor where actor_id between 3 and 18 or first_name!='ed';
select actor_id,last_name,first_name from actor where first_name='nick' or first_name='grace' ;
select * from actor where (actor_id between 2 and 6) or actor_id> 5;



