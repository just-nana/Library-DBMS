--Issue a book
INSERT INTO Transactions (BookID, MemberID, StaffID, CheckoutDate, DueDate) VALUES
(1, 1, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 18 DAY));

--Return a book
UPDATE Transactions
SET ReturnDate = CURDATE(), Status = 'Returned'
WHERE TransactionID = 1;

--Calculate late fees
INSERT INTO LateFees (TransactionID, Amount) VALUES
(1, 5.00);
