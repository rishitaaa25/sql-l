use sakila;
-- aggregrate fun
select sum(amount),sum(round(amount)) from payment;
select count(amount) from payment where amount>5; -- pehla data filter then further calculations after

 select * from payment;
select distinct year(payment_date) from payment;
-- ans 1
select payment_id, amount from payment where year(payment_date)=2005;
-- ans 2
select count(distinct(customer_id)) from payment where month(payment_date)=06;
-- ans 3
select max(amount),avg(amount),max(amount)-avg(amount) from payment where amount>2 and year
(payment_date)=2006;

-- group by statement(growping similar values)
select customer_id, count(payment_id) from payment group by customer_id;