-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT p.FirstName, p.LastName, p.Email, COUNT(l.LoanID) AS LoanCount
FROM Patrons p JOIN Loans l ON p.PatronID = l.PatronID
GROUP BY l.PatronID
ORDER BY LoanCount
LIMIT 5