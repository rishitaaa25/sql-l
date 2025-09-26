use sakila;

-- trim function : removes white spaces
select char_length(trim(' hey '));
select char_length(rtrim('  hey    '));
select char_length(ltrim('        hey '));

-- replace: replaces value
select first_name, replace(first_name,'E','@#') from actor;

-- lpad,rpad : to fill value with dummy values
select first_name , lpad(first_name,5,'#') from actor;
select first_name , rpad(first_name,5,'#') from actor;


-- numreric functions
-- round : rounds off value
-- rounding of decimal values
select round(11.5); -- 12
select round(11.68,1); -- it rounds of decimal value agar value 5 se badi hai toh round off hoga
select round(11.278,2); -- 11.28(sabme aage value hona zaruri hai ye 1,2 saari positions hai)

-- rounding of integers value
select round(38.627,-1); --  5 check karo
select round(244.627,-2); --  50
select round(2599.627,-3); -- 500

-- truncate : do not rounds off,just extracts the value
select truncate (6546.637,3);

-- other functions mathematical
select mod (10,2); -- remainder
select floor(6.99999); -- will give 6
select ceil(8.0002); -- will give 9

-- date functions (most most imp)*
-- date pr kaam krna hai
select current_date(); -- or currdate() will give current date
select current_time(); -- or current_timestramp() will give current time
select now(); -- will give both date and time

-- add date()
select now(), adddate( now(), 6); -- add days
select now(), adddate( now(), interval 2 month); -- add month
select now(), adddate( now(), interval 2 year); -- add year
select now(), adddate( now(), interval 2 hour); -- add 2 hrs
select now(), adddate( now(), interval -2 day ); -- will - 2 days 

-- extract 
select now(), extract(quarter from now()); -- will give quarter
select now(), date_format(now(),'year is %y, my month is %m'); -- formatting

use sakila;
select payment_date, year(payment_date), extract(month from payment_date), 
date_format(payment_date,'hour of shipping is %h'),datediff(payment_date,now()) from payment);