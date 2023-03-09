-- Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.
SELECT 
  firstname, 
  lastname, 
  email
FROM 
  customers
ORDER BY
  lastname;