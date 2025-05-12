CREATE DATABASE Library;
USE Library;

CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Contact VARCHAR(50)
);

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Nationality VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    ISBN VARCHAR(20),
    PublicationYear INT,
    Genre VARCHAR(50),
    PublisherID INT,
    AuthorID INT,
    QuantityAvailable INT,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    RegistrationDate DATE
);

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(255),
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    StaffID INT,
    CheckoutDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    Status ENUM('Issued', 'Returned', 'Overdue') DEFAULT 'Issued',
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE LateFees (
    FeeID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionID INT,
    Amount DECIMAL(10, 2),
    Paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);


