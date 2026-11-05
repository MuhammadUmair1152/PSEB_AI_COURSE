CREATE DATABASE library;

-- create
CREATE TABLE Books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year INT,
    price DECIMAL(10, 2)
);

INSERT INTO books (id, title, author, year, price) VALUES
(1, 'Clean Code', 'Robert C. Martin', 2008, 450.00),
(2, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 600.00),
(3, 'Design Patterns', 'Erich Gamma', 1994, 750.00),
(4, 'Refactoring', 'Martin Fowler', 1999, 550.00),
(5, 'Code Complete', 'Steve McConnell', 2004, 800.00),
(6, 'Head First Design Patterns', 'Eric Freeman', 2004, 480.00),
(7, 'Clean Architecture', 'Robert C. Martin', 2017, 520.00),
(8, 'Introduction to Algorithms', 'Thomas H. Cormen', 2009, 950.00);
-- Display books priced above 500
SELECT * FROM books WHERE price > 500;

-- Display all books sorted by price (highest first)
SELECT * FROM books ORDER BY price DESC;

-- Count the total number of books
SELECT COUNT(*) FROM books;

-- Update the price of one book
UPDATE books SET price = 499.00 WHERE id = 1;
