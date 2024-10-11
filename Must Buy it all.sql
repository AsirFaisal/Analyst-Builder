SELECT customer_id
FROM purchases
GROUP BY customer_id 
HAVING  COUNT (DISTINCT Product_id) = 4;