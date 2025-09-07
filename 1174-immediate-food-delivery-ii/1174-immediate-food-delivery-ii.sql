# Write your MySQL query statement below
SELECT ROUND(AVG(dOut.order_date = dOut.customer_pref_delivery_date) * 100, 2) immediate_percentage
FROM Delivery dOut JOIN (
    SELECT customer_id, MIN(order_date) first_order
    FROM Delivery
    GROUP BY customer_id
) dIn ON dOut.customer_id = dIn.customer_id AND dOut. order_date = dIn.first_order;
