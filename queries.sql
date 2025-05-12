SELECT * FROM Books;

SELECT b.Title, m.Name, t.DueDate
FROM Transactions t
JOIN Books b ON t.BookID = b.BookID
JOIN Members m ON t.MemberID = m.MemberID
WHERE t.Status = 'Issued' AND t.DueDate < CURDATE();

SELECT SUM(Amount) AS TotalLateFees FROM LateFees WHERE Paid = FALSE;
