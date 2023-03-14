-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad';
SELECT CustomerID FROM Customers WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;

SELECT c.FirstName, c.LastName, d.Name 
FROM Customers c JOIN Dishes d ON c.FavoriteDish = d.DishID
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';