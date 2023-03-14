-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT COUNT(Title) AS NumberOfCopies 
FROM Books 
WHERE Title = 'Dracula';
--
SELECT COUNT(b.Title) AS NumberOfBooks 
FROM Loans l JOIN Books b ON l.BookID = b.BookID
WHERE Title = 'Dracula' AND ReturnedDate IS NULL;
--
SELECT
  (SELECT COUNT(Title) AS NumberOfCopies 
  FROM Books 
  WHERE Title = 'Dracula') -
  (SELECT COUNT(b.Title) AS NumberOfBooks 
  FROM Loans l JOIN Books b ON l.BookID = b.BookID
  WHERE Title = 'Dracula' AND ReturnedDate IS NULL)
  AS Available_Copies;