use sakila;
-- LIKE OPERATOR %(wildcard char) : zero or more char 
select * from actor where first_name like '%s';
select * from actor where first_name like '%s%';
select * from actor where first_name like 'n%';

-- ( _ ) : exactly one char (us position pe koi bhi char aa sakta hai)
select * from actor where first_name like 'a___'; -- after a 3 char
select * from actor where first_name like 'a_%';  -- both can be used together
select * from actor where first_name like '_d%';

-- ques by sir
-- ans 1
select actor_id,first_name from actor where first_name like '%te';

-- ans 2
select actor_id,first_name from actor where first_name like '%nn%';

-- ans 3
select last_name,first_name from actor where last_name like 'b%r_';

-- ans 4
select * from actor where first_name like '____%';

-- ans 5
select * from actor where actor_id between 2 and 90 and first_name like '_%s%a_';

-- functions: block of code so that we can use that logic agian and agian to increase code readibulity
-- inbuilt functions 
-- 1 scalar functions   2 multirow functions   
-- applied on each row and return output for each row are scalar functions
select first_name , char_length(first_name) from actor; -- gives length *
select last_name,first_name, concat_ws('#',first_name,last_name) from actor; -- no space bydefault in concat *
select first_name,substr(first_name,-4,3) from actor;



