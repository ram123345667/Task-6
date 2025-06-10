USE task6;
SELECT 
    YEAR(STR_TO_DATE(order_date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')) AS month,
    SUM(payment) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE YEAR(STR_TO_DATE(order_date, '%Y-%m-%d')) = 2021
GROUP BY year, month
ORDER BY year, month;
