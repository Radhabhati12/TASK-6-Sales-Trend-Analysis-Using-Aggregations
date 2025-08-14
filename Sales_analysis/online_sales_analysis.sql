 use sales_db;
 show tables;
 drop table online_sale;
 CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    orderDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
    );
    SELECT 
    EXTRACT(YEAR FROM orderDate) AS order_year, 
    EXTRACT(MONTH FROM orderDate) AS order_month, 
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT product_id) AS order_volume
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

    

