# SQL-Practices---Leetcode

1757. Recyclable and Low Fat Products

SELECT product_id
FROM Products
WHERE low_fats = 'Y' and recyclable = 'Y';

584. Find Customer Referee

SELECT name
FROM Customer
WHERE referee_id <> 2 or referee_id IS NULL;

595. Big Countries

SELECT name, population, area
FROM World
WHERE area >= 3000000 or population >= 25000000;

1148. Article Views I

SELECT DISTINCT author_id AS 'id'
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC;

1683. Invalid Tweets

SELECT tweet_id FROM Tweets
WHERE LENGTH(content) > 15;

1378. Replace Employee ID With The Unique Identifier
      
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI ON EmployeeUNI.id = Employees.id;

1068. Product Sales Analysis I

SELECT Product.product_name, Sales.year, Sales.price
FROM Product
JOIN Sales ON Sales.product_id = Product.product_id;

1581. Customer Who Visited but Did Not Make Any Transactions
      
SELECT customer_id, COUNT(Visits.visit_id) as count_no_trans
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;


