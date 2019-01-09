-- **************************
-- Name: Edward Vuong
-- ID: 120246186
-- Date: Sept 17, 2018
-- Purpose: Lab 02 DBS 201
-- Description: learn basic SELECT statements
-- **************************

-- Q1 - DONE
-- Q2 - F
-- Q3 - 5
-- Q4
SELECT *
    FROM premiere.customer;

SELECT * FROM premiere.part;
SELECT * FROM premiere.orderline;
SELECT * FROM premiere.orders;
SELECT * FROM premiere.salesrep;

-- Q5
SELECT last_name  "Last Name"
    FROM premiere.customer;

-- Q6 
SELECT customer_number "Customer Number", 
    first_name "First Name", balance
    FROM premiere.customer;

-- Q7 - 15
-- Q8 - Fred Phillips
-- Q9 - 1500

-- Q10 
SELECT COUNT(*) "Total Rows" FROM premiere.customer;
-- It gave an error because the file was not found from "customer." It has to be "premiere.customer." 

-- Q11 
SELECT COUNT(*) AS "Total Rows"
    FROM premiere.customer;
-- As gives an alias to make the title more user friendly

--Q12
SELECT customer_number, last_name,
     balance, balance*1.1 "Current Balance"
     FROM premiere.customer;

-- Q13 
SELECT customer_number, order_number, order_date
     FROM premiere.orders;

-- Q14
SELECT order_date, order_number, customer_number
     FROM premiere.orders
     ORDER BY order_date DESC;

-- Q15 
SELECT part_number, part_description, on_hand, price
     FROM premiere.part
     ORDER BY warehouse, class;

-- Q16
SELECT 'Part Number ' || part_number || ' is a ' || RTRIM(part_description) || ' and there is ' || on_hand || ' in stock' AS "Parts in Stock"
    FROM premiere.part;

-- Q17
SELECT part_number
     FROM premiere.orderline;

-- Q18 
SELECT * FROM premiere.salesrep
     WHERE commission > 3000;

-- Q19
SELECT  premiere.part.part_number, part_description, number_ordered, quoted_price
     FROM premiere.part, premiere.orderline;
     
-- Q20
SELECT last_name, first_name, order_number, part_description, number_ordered, premiere.part.part_number
     FROM premiere.customer, premiere.part, premiere.orderline
     WHERE premiere.part.part_number LIKE 'C%';