create database corrdb;
use corrdb;

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data into products
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Phone', 'Electronics', 800.00),
(3, 'Chair', 'Furniture', 150.00),
(4, 'Desk', 'Furniture', 300.00),
(5, 'Monitor', 'Electronics', 250.00);

-- Insert data into sales
INSERT INTO sales (sale_id, product_id, quantity, sale_date) VALUES
(1, 1, 3, '2025-09-10'),
(2, 2, 5, '2025-09-11'),
(3, 1, 2, '2025-09-15'),
(4, 3, 7, '2025-09-1');

select * from products;
select * from sales;
-- co related
select product_name,category,price from products as p_out
where price>(select avg (price) from products where category=p_out.category);

select product_id,product_name from products as p_out
where p_out.product_id in 
(select product_id from sales as s_in where s_in.product_id=p_out.product_id and quantity>3);

-- second highest price from table
-- limit keyword is used to control no. of rows
select max(price) from products where price<(select max(price) from products);
-- information 
select * from products where price=
(select max(price) from products where price < (select max(price) from products));

-- second lowest
select min(price) from products where price>(select min(price) from products);
select * from products where price=
(select min(price) from products where price > (select min(price) from products));

-- get all the info from the product table where price > price of product id 3.
-- get all the information from product where the category of product is same as of productid 2
-- get all the information from product where the category of product is same as of productid 2 or 3
-- get all the information from product where the price of the product is > among all the prices of product in 
-- furniture category
-- get the product id product name and the total quantity sold for each product

-- ans 1
select * from products where price > (select price from products where product_id=3);

-- ans 2
select * from products where category =(select category from products where product_id=2);

-- ans 3
select * from products where category in (select category from products where product_id=2 or product_id=3);
-- ek se zada row hoti hai toh = nhi aata in aata hai

-- ans 4
select * from products where price >all (select price from products where category='furniture');

select * from sales;
-- ans 5
select p.product_id,p.product_name from products as p
join sales as s on p.product_id=s.product_id group by p.product_name,p.product_id;