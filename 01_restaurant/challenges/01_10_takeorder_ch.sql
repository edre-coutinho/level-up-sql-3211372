-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (
  (SELECT CustomerID 
  FROM Customers 
  WHERE FirstName = 'Loretta' AND LastName = 'Hundey' AND Address = '6939 Elka Place'),
  '2022-09-20 14:00:00'
);
SELECT * FROM Orders WHERE OrderDate = '2022-09-20 14:00:00';

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES
  (1001,
  (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
  (1001,
  (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
  (1001,
  (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));
SELECT * FROM OrdersDishes WHERE OrderID = 1001;

SELECT SUM(d.Price) FROM OrdersDishes od JOIN Dishes d ON od.DishID = d.DishID WHERE OrderID = 1001;

-- just to make sure
SELECT od.DishID, d.Name, d.Price FROM OrdersDishes od JOIN Dishes d ON od.DishID = d.DishID WHERE OrderID = 1001;


