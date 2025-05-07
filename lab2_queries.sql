-- 1. Employees in department 30 with salary between 1000 and 2000
SELECT Fname, Lname, Salary, Dno
FROM Employee
WHERE Dno = 30 AND Salary BETWEEN 1000 AND 2000;

-- 2. All project names, locations, and department numbers
SELECT Pname, Plocation, Dnum
FROM Project;

-- 3. Employee full name and annual commission (10% of annual salary)
SELECT Fname & " " & Lname AS FullName, Salary * 12 * 0.1 AS [ANNUAL COMM]
FROM Employee;

-- 4. Employees earning more than 1000
SELECT SSN, Fname
FROM Employee
WHERE Salary > 1000;

-- 5. Female employees
SELECT Fname, Lname, Salary
FROM Employee
WHERE Gender = 'F';

-- 6. Departments managed by manager 968574
SELECT Dnum, Dname
FROM Departments
WHERE MGRSSN = 968574;

-- 7. Projects in departments 10 or 20 located in Cairo or Alex
SELECT Pnumber, Pname, Plocation
FROM Project
WHERE Dnum IN (10, 20) AND City IN ('Cairo', 'Alex');

-- 8. Projects starting with "P"
SELECT Pname, Plocation
FROM Project
WHERE Pname LIKE "P*";
