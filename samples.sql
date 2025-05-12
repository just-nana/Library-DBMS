INSERT INTO Publishers (Name, Address, Contact) VALUES
('HarperCollins', '195 Broadway, New York, NY', '212-207-7000'),
('Penguin Random House', '1745 Broadway, New York, NY', '212-782-9000');

INSERT INTO Authors (FirstName, LastName, Nationality) VALUES
('George', 'Orwell', 'British'),
('Harper', 'Lee', 'American');

INSERT INTO Books (Title, ISBN, PublicationYear, Genre, PublisherID, AuthorID, QuantityAvailable) VALUES
('1984', '9780451524935', 1949, 'Dystopian', 1, 1, 5),
('To Kill a Mockingbird', '9780061120084', 1960, 'Fiction', 2, 2, 3);

INSERT INTO Members (Name, Address, Email, Phone, RegistrationDate) VALUES
('Ashok Kumar', '92 Essex Rd', 'ashokKumar@gmail.com', '0712345678', '2025-05-01'),
('Ivan Ivanovich', '90 Quay street', 'ivan@gmail.com', '0723456789', '2024-10-02');

INSERT INTO Staff (Username, Password, FirstName, LastName) VALUES
('admin', '0987654', 'Karl', 'Marx'),
('librarian', '356789', 'Franz', 'Kafka');
