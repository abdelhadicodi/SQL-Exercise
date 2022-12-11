# Basic Queries

# problem 1
SELECT Name FROM students

# problem 2
SELECT * FROM students
WHERE age > 30

# problem 3
SELECT * FROM students
WHERE age >= 30 AND Gender = "F"

# problem 4
SELECT Name, Points FROM students
WHERE name = "Alex"

# problem 5
INSERT into students (ID, Name, Age, Gender, Points) 
VALUES (7, "abd", "21", "M", 100)

# problem 6
UPDATE students
SET Points = 400 
WHERE Name = "Basma" AND Points = 300

# problem 7
UPDATE students
SET Points = 100 
WHERE Name = "Alex" AND Points = 200


