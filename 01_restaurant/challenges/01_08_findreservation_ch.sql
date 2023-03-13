-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- St%s%
-- There are four people in the party. Today is June 14th.
SELECT c.LastName, c.FirstName, r.Date, r.PartySize
FROM Customers c JOIN Reservations r ON c.CustomerID = r.CustomerID
WHERE PartySize = 4 AND LastName LIKE 'St%s%' AND Date LIKE '%-06-14%'