use sakila;
-- select count(*),count(customer_id) from payment; -- count* and count(columen )

-- select customer_id from payment group by customer_id;
-- select customer_id,sum(amount),count(customer_id) from payment group by customer_id;
-- group by is generally used when there are chances of duplicate values.
-- select customer_id,count(customer_id) from payment where customer_id>3 group by customer_id;
-- always use where before group by
-- select customer_id,count(customer_id) from payment where count(customer_id)>30 group by customer_id;
-- now this statement will give an error, count is a aggrette function, kabhi bhi where condition aggregate functions pr 
-- nhi chalta...qki data sabse pehle hee where clause chalta hai...vo search karega original table me
-- SO IF YOU WANNA USE AGGEGRATE FUNCTIONS...USE HAVING CLAUSE
-- NORMAL DATA-- WHERE (TO FILTER DATA BASED ON DATA PRESENT IN THE TABLE)
-- HAVING -- AGGREGATE FUNCTIONS ME HAVING...GROUP BY K BAAD LAGTA HAI HAVING
-- select customer_id,count(customer_id) from payment group by customer_id having count(customer_id)>30;

-- select amount from payment  where amount > 2 group by amount having count(*)>3000;
-- where se filter hua, fir group by hua, or end me having hua

-- alias-- giving a new name
-- select amount,count(*) as totalcount from payment  where amount > 2 group by amount having totalcount>3000;

-- ans 1
select * from payment;
select staff_id, count(customer_id) from payment group by staff_id;

-- ans 2
select * from payment;
select month(payment_date),sum(amount),count(amount) from payment group by (payment_date);

-- ans 3
select amount, count(distinct(customer_id)) from payment group by amount;

-- ans 4
select amount,count(*)from payment where year(payment_date)=2005
 group by amount having count(*)>15;
