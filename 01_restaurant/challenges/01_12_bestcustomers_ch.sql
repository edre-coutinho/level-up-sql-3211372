-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
WITH loyal AS (
  SELECT COUNT(OrderID) AS Count, CustomerID 
  FROM Orders 
  GROUP BY CustomerID 
)
SELECT c.FirstName, c.LastName, c.Email, l.Count 
FROM Customers c JOIN loyal l ON c.CustomerID = l.CustomerID 
ORDER BY Count DESC