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


# Creating Table
 CREATE TABLE graduates (
ID INTEGER NOT NULL PRIMARY KEY,
name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
graduation TEXT
);

# after Creating Table
INSERT INTO graduates (ID, Name, Age, Gender, Points)
SELECT 4, "Layla", "18", "F", 350 FROM students
WHERE ID = 4

DELETE FROM students WHERE
ID=4


# Joins
CREATE TABLE employee_company(
name TEXT NOT NULL,
companyname TEXT NOT NULL,
companydate TEXT NOT NULL
);

# Count & Filter
# 1
SELECT students.Name FROM students
WHERE Points=(
SELECT max(Points)
FROM students)

# 2
SELECT avg(Points)
FROM students

# 3
SELECT count (Points) as total FROM "students"
WHERE students.Points = 500

# 4
SELECT Name FROM students
WHERE students.Name like "%s%"

# 5
SELECT * FROM students ORDER by Points DESC