create database retail_store_db;
use retail_store_db;
CREATE TABLE sales (
    sale_id INT,
    customer_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(30),
    category VARCHAR(30),
    product_name VARCHAR(50),
    payment_mode VARCHAR(20),
    quantity INT,
    price DECIMAL(10,2),
    rating DECIMAL(2,1),
    order_date DATE
);
INSERT INTO sales VALUES 
(1,'Akash','Male',24,'Pune','Electronics','Laptop','UPI',1,55000,4.8,'2026-01-10'), 
(2,'Rahul','Male',26,'Mumbai','Fashion','Shirt','Card',2,2500,4.2,'2026-01-11'), 
(3,'Sneha','Female',23,'Delhi','Beauty','Lipstick','UPI',3,1500,4.5,'2026-01-12'), 
(4,'Priya','Female',25,'Pune','Electronics','Mobile','Card',1,25000,4.7,'2026-01-13'), 
(5,'Aman','Male',28,'Indore','Sports','Cricket Bat','Cash',1,3000,4.1,'2026-01-14'), 
(6,'Rohit','Male',27,'Mumbai','Electronics','Headphones','UPI',2,4000,4.3,'2026-01-15'), 
(7,'Riya','Female',24,'Delhi','Fashion','Jeans','Card',1,2200,4.4,'2026-01-16'), 
(8,'Karan','Male',29,'Pune','Sports','Football','Cash',2,1800,4.0,'2026-01-17'), 
(9,'Neha','Female',22,'Bhopal','Beauty','Face Wash','UPI',4,800,4.6,'2026-01-18'), 
(10,'Vikas','Male',31,'Jaipur','Electronics','Tablet','Card',1,18000,4.5,'2026-01-19'), 
(11,'Pooja','Female',27,'Pune','Fashion','Kurti','UPI',2,1700,4.3,'2026-01-20'), 
(12,'Arjun','Male',30,'Delhi','Electronics','Smart Watch','Card',1,9000,4.6,'2026-01-21'), 
(13,'Anjali','Female',26,'Mumbai','Beauty','Perfume','Cash',1,3500,4.2,'2026-01-22'), 
(14,'Yash','Male',25,'Indore','Sports','Badminton Kit','UPI',1,2800,4.4,'2026-01-23'), 
(15,'Meera','Female',28,'Pune','Electronics','Camera','Card',1,45000,4.9,'2026-01-24'), 
(16,'Sahil','Male',24,'Bhopal','Fashion','Jacket','UPI',1,3200,4.1,'2026-01-25'), 
(17,'Nikita','Female',29,'Jaipur','Beauty','Moisturizer','Card',2,1200,4.7,'2026-01-26'), 
(18,'Harsh','Male',32,'Delhi','Sports','Gym Gloves','Cash',3,900,4.0,'2026-01-27'), 
(19,'Simran','Female',23,'Mumbai','Electronics','Earbuds','UPI',2,2500,4.5,'2026-01-28'), 
(20,'Deepak','Male',27,'Pune','Fashion','T-Shirt','Card',3,1800,4.2,'2026-01-29');

select * from sales;
-- A – Basic SQL Queries--
select customer_name from sales;
select customer_name,city from sales
select product_name, price from sales;
select city from sales;
select category from sales;
select payment_mode from sales;
select * from sales where gender='male';
select * from sales where gender='female';
select customer_name,rating  from sales;

-- WHERE Clause--
select * from sales where city='pune';
select * from sales where city='mumbai';
select * from sales where category='electronics';
select * from sales where product_name='Fashion';
select * from sales where product_name='Sports';
select * from sales where price>5000;
select * from sales where price<5000;
select * from sales where age>25;
select * from sales where age<25;
select * from sales where age>25;
select * from sales where age>25;
select * from sales where rating>4.5;
select * from sales where payment_mode='UPI';
select * from sales where payment_mode='CARD';
select * from sales where payment_mode='CASH';
select * from sales where category='electronics' and city ='pune';
select * from sales where product_name='fashion' and city ='mumbai';
select * from sales where gender='female' and city ='delhi';
select * from sales where gender='male' and city ='pune';
select * from sales where price between 2000 and 10000;
select * from sales where age between 24 and 30;
select * from sales where order_date>20-01-2026;

-- C – ORDER BY, LIMIT and OFFSET--
select * from sales order by price asc;
select * from sales order by price desc;
select * from sales order by age asc;
select * from sales order by age desc;
select * from sales order by rating  desc;
select * from sales order by price desc limit 3;
select * from sales order by price asc limit 3;
select * from sales order by order_date desc limit 3;
select * from sales order by order_date asc limit 3;
select * from sales order by order_date desc limit 5;
select * from sales order by product_name desc limit 3;
select * from sales order by rating desc limit 5;
select * from sales order by price desc limit 3 offset 2;
select * from sales order by price desc limit 3 offset 3;
select * from sales  limit 15 offset 5;
select * from sales  limit 5 offset 5;
select * from sales  limit 15 offset 10;
select * from sales  limit 5 offset 15;
select * from sales  limit 3;

-- D – Aggregate Functions--
select count(*) from sales; 
SELECT COUNT(*) AS total_orders
FROM sales;
SELECT avg(quantity * price ) AS average_sales_amount
FROM sales;
SELECT sum(quantity * price ) AS total_sales_revenue
FROM sales;
SELECT max(quantity * price ) 
FROM sales;
SELECT min(quantity * price ) AS sales_sales_amount
FROM sales;

SELECT min(rating)
FROM sales;
SELECT max(rating)
FROM sales;
SELECT avg(rating) 
FROM sales;
 SELECT sum(quantity) 
FROM sales;
SELECT avg(quantity) 
FROM sales;
SELECT min(quantity) 
FROM sales;
SELECT max(quantity) 
FROM sales;
SELECT count(*)  as electronics_products
FROM sales where category='electronics';
SELECT count(*)  as fashion_products
FROM sales where category='fashion';
SELECT count(*)  as sports_products
FROM sales where category='sports';

-- E – String Functions--
select upper (customer_name) from sales;
select lower (customer_name) from sales;
select  length(customer_name) from sales;
select length(city) from sales;
select concat(customer_name, '_' , city) from sales;
select replace(customer_name,'a','@') from sales;
select replace(customer_name,'e','*') from sales;
select trim(customer_name) from sales;
select left(customer_name,3) from sales;
select right(city,2) from sales;

-- F – Numeric and Date Functions--
select round(price) from sales;
SELECT price,
       CEIL(price)
FROM sales;
SELECT price,
       floor(price)
FROM sales;
 SELECT quantity,
       mod(quantity,2)
FROM sales;
SELECT quantity,
       mod(quantity,3)
FROM sales;
SELECT (current_date)
FROM sales;
 SELECT (current_time)
FROM sales;
SELECT (current_timestamp)
FROM sales;

SELECT order_date,
       year(order_date)
FROM sales;
SELECT order_date,
       month(order_date)
FROM sales;
SELECT order_date,
       day(order_date)
FROM sales;
SELECT *
FROM sales
WHERE MONTHNAME(order_date) = 'January';

SELECT *
FROM sales
WHERE order_date < '26-01-20';
 
SELECT *
FROM sales
WHERE order_date >'26-01-20';
 
 
 
SELECT MAX(order_date) AS latest_order_date
FROM sales;
alter

-- G UPDATE and DELETE--

select * from sales ;
SET SQL_SAFE_UPDATES = 0;

update sales 
set city='mumbai'
where customer_name ='akash';

update sales 
set rating=4
where customer_name ='rahul';

update sales 
set payment_mode='upi'
where payment_mode ='card';

update sales 
set price=price+500;

update sales set price =price-100;
select * from sales;
update sales set category='gadgets' where category='electronics';
update sales set city='nagpur' where city='pune';
update sales set quantity=20 where product_name='laptop';
update sales set product_name='gaming laptop'  where product_name='laptop';
update sales set customer_name='rahul'  where product_name='sneha';
delete  from sales where customer_name='rahul'
delete  from sales where category='sports'
delete  from sales where rating<4.0;
delete  from sales where payment_mode='cash';
delete  from sales where city='jaipur;'

-- H – GROUP BY--
select city,count(*) from sales group by city;
select category,count(*) from sales group by category;
select payment_mode,count(*) from sales group by payment_mode;
select gender,count(*) from sales group by gender;
select city,sum(quantity*price) from sales group by city;
select category,sum(quantity*price) from sales group by category;
select payment_mode,sum(quantity*price) from sales group by payment_mode;
select city,avg(quantity*price) from sales group by city;
select category,avg(quantity*price) from sales group by category;
select city,max(quantity*price) from sales group by city;
select city,min(quantity*price) from sales group by city;
select category,max(quantity*price) from sales group by category;
select category,min(quantity*price) from sales group by category;
select city,category,sum(quantity*price) from sales group by city,category;
select city,payment_mode,sum(quantity*price) from sales group by city,payment_mode;

 -- HAVING Clause--
select city,sum(quantity*price) from sales group by city having sum(quantity*price)>50000;
select category,sum(quantity*price) from sales group by category 
having sum(quantity*price)>60000;
select city,avg(quantity*price) from sales group by city having avg(quantity*price)>10000;
select category,avg(rating) from sales group by category having avg(rating)>4.5;
select city,count(*) from sales group by city having count(*)>3 ;
select category,count(*) from sales group by category having count(*)>2 ;
select payment_mode,count(*) from sales group by payment_mode having count(*)>5 ;
select city,max(quantity*price) from sales group by city having max(quantity*price)>40000 ;
select category,min(quantity*price) from sales group by category having min(quantity*price)>1500;
select*from sales;
select city,avg(age) from sales group by city having avg(age)>25;

-– WHERE + GROUP BY + HAVING--
select city,sum(quantity*price) from sales where  payment_mode='upi' group by city ;
select city,sum(quantity*price) from sales where category='fashion' group by city ;
select city,sum(quantity*price) from sales where  gender='female' group by city ;
select city,sum(quantity*price) from sales where  price>20000 group by city ;
select city,sum(quantity*price) from sales where price between 5000  and 50000 group by city ;
select category,count(*) from sales where payment_mode='upi' group by category having count(*)>2;
select category,sum(quantity*price) from sales where payment_mode='card' group by category 
having sum(quantity*price)>100;
select category,count(*) from sales  where rating>4.5 group by category;
select city,sum(quantity*price) from sales where age<25 group by city ;
select city,sum(quantity*price) from sales where age<25 group by city having sum(quantity*price)>20000;

--Final Business Reports--
select city,sum(quantity * price) as revenue from sales group by city order by revenue desc limit 1;
select category,sum(quantity*price) as revenue from sales group by category order by revenue desc limit 1;

select payment_mode,count(*) as total_orders from sales group by payment_mode  order by total_orders desc limit 1; 
select category,avg(rating) from sales group by category order by avg(rating) desc ;
select customer_name,sum(quantity* price) from sales group by customer_name 
order by sum(quantity* price) desc ;
select product_name,sum(quantity* price) from sales group by product_name 
order by sum(quantity* price) desc ;

select city,sum(quantity*price) from sales group by city order by  sum(quantity*price) desc limit 3; 

select category,sum(quantity*price)  from sales group by category order by sum(quantity*price) desc limit 3 ;
