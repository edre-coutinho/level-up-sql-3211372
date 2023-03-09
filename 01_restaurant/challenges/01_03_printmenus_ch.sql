-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT
  type, name, price, description
FROM
  dishes
ORDER BY 
  price ASC;
-- Create a report showing appetizers and beverages.
SELECT
  type, name, price, description
FROM
  dishes
WHERE
  type = 'Appetizer' OR type = 'Beverage'
ORDER BY 
  type;
-- Create a report with all items except beverages.
SELECT
  type, name, price, description
FROM
  dishes
WHERE
  type != 'Beverage'
ORDER BY 
  type ASC;