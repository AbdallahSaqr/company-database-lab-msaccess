-- 1. Department id, name, manager id and name
SELECT Dnum, Dname, MGRSSN, Fname
FROM Departments, Employee
WHERE Departments.MGRSSN = Employee.SSN;

-- 2. Department name and project name
SELECT Dname, Pname
FROM Departments, Project
WHERE Project.Dnum = Departments.Dnum;

-- 3. Dependent name and employee name
SELECT Dependent_name, Fname, Lname
FROM Dependent, Employee
WHERE Dependent.ESSN = Employee.SSN;

-- 4. Employees in dept 10 working >=10 hours on 'Al Rabwah'
SELECT E.Fname, P.Pname
FROM (Employee AS E
INNER JOIN Works_for AS W ON E.SSN = W.ESSN)
INNER JOIN Project AS P ON W.Pno = P.Pnumber
WHERE E.Dno = 10 AND W.Hours >= 10 AND P.Pname = "Al Rabwah";

-- 5. Employees supervised by Kamel Mohamed
SELECT Fname
FROM Employee AS S
WHERE S.Superssn = (
    SELECT E.SSN FROM Employee AS E WHERE E.Fname = "Kamel" AND E.Lname = "Mohamed"
);

-- 6. Managers with no dependents
SELECT E.Lname
FROM Employee AS E
INNER JOIN Departments AS D ON E.SSN = D.MGRSSN
WHERE E.SSN NOT IN (
    SELECT ESSN FROM Dependent
);

-- 7. Department with the smallest employee SSN
SELECT D.Dname
FROM Departments AS D
INNER JOIN Employee AS E ON D.Dnum = E.Dno
WHERE E.SSN = (SELECT MIN(SSN) FROM Employee);

-- 8. Department name and max, min, avg salary
SELECT D.Dname, MAX(E.Salary), MIN(E.Salary), AVG(E.Salary)
FROM Departments AS D
INNER JOIN Employee AS E ON D.Dnum = E.Dno
GROUP BY D.Dname;

-- 9. Departments with avg salary <= 1200
SELECT D.Dnum, D.Dname, COUNT(E.SSN) AS NumOfEmployees
FROM Departments AS D
INNER JOIN Employee AS E ON D.Dnum = E.Dno
GROUP BY D.Dnum, D.Dname
HAVING AVG(E.Salary) <= 1200;

-- 10. Employee fname and project name, ordered by dept, lname, fname
SELECT E.Fname, P.Pname
FROM (Employee AS E
INNER JOIN Works_for AS Wf ON E.SSN = Wf.ESSN)
INNER JOIN Project AS P ON Wf.Pno = P.Pnumber
ORDER BY E.Dno, E.Lname, E.Fname;

-- 11. Project details for those located in Cairo
SELECT P.Pnumber, D.Dname, E.Lname AS ManagerLname, E.Address, E.BDATE
FROM ((Project AS P
INNER JOIN Departments AS D ON P.Dnum = D.Dnum)
INNER JOIN Employee AS E ON D.MGRSSN = E.SSN)
WHERE P.City = 'Cairo';
