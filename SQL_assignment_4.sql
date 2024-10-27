create database Assignments;
use assignments;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'India', 1393409038, 3287263),
(2, 'USA', 331002651, 9833517),
(3, 'Brazil', 212559417, 8515767),
(4, 'China', 1444216107, 9596961),
(5, 'UK', 67886011, 242495),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Canada', 37742154, 9984670),
(9, 'Japan', 126476461, 377975),
(10, 'Australia', 25499884, 7692024);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'Ashly', 'Jibin', 5000000, 4.5, 2, 'USA'),
(2, 'Jpy', 'Goshal', 7000000, 3.9, 8, 'Canada'),
(3, 'Jay', 'Richu', 2000000, 4.7, 5, 'UK'),
(4, 'Zach', 'Mebin', 8000000, 3.5, 1, 'India'),
(5, 'Joby', 'Jonhy', 3000000, 4.2, 10, 'Australia'),
(6, 'John', 'Gopika', 4000000, 4.6, 6, 'Germany'),
(7, 'Anil', 'George', 1500000, 3.8, 9, 'Japan'),
(8, 'Mamen', 'Justin', 6000000, 4.9, 4, 'China'),
(9, 'Jose', 'Mariya', 2000000, 4.1, 3, 'Brazil'),
(10, 'Sam', 'Richu', 1000000, 2.8, 10, 'Australia');


SELECT DISTINCT Country_name FROM Persons;





SELECT Fname AS FirstName, Lname AS LastName FROM Persons;







SELECT * FROM Persons WHERE Rating > 4.0;




SELECT * FROM Country WHERE Population > 1000000;


SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;




SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');


SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');


SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';

-- END
