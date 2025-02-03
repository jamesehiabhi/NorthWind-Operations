select * from categories;
select * from customers;
select * from employees;

--1. show categoryid and categoryname from categories
select categoryid, categoryname
from categories;

--customername and contactname from customers
select customerid,customername,contactname
from customers;

--some colums from the orderdetails table
select orderid,productid,quantity
from orderdetails;

--where; used to filter your output to a specific value(s)
select orderid,productid,quantity
from orderdetails
where quantity > 20;

select * from orders
where customerid = 21;


--order by; used for rearranging your data output based on the values in a column.

select * from orders
where customerid = 21;


select orderid,productid,quantity
from orderdetails
where quantity > 20
order by quantity desc;

--limits; used for limiting your data output ot a specific number of rows
select * from products
order by price desc
limit 5

select * from suppliers
limit 5;

--between; used with "where" to filter for values between a specific range.
select * from employees
where birthdate between '1950-01-01' and '1960-12-31'

--like; used with 'where' to filter for values that resembles the specified value eg customers with names starting from the letter A.
select employeeid, firstname, lastname
from employees
where firstname like '%a%';

--In/Not In; used to include or exclude specific values.
select * from orders
where shipperid in (1,3)

--Aggregation; sum, avg,max,min,count,etc
select orderid, sum (quantity)
from orderdetails
group by orderid

--having; like where, used for filtering outputs
select orderid, sum (quantity)
from orderdetails
group by orderid
having sum(quantity) > 50

select categoryid, count(*) as totalproducts
from products
group by categoryid
having count(*) >10

--distinct; used to retrieving unique values 
select distinct country 
from customers 
















