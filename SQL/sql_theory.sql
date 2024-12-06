CREATE TABLE Dept
(
	deptNo		INTEGER,
	dName		VARCHAR(20) UNIQUE NOT NULL,
	dLoc			VARCHAR(30) NOT NULL,
	createDate	DATE,
	CONSTRAINT 	d_dno_pk PRIMARY KEY (deptNo)
);

INSERT INTO 
Dept (deptNo, dName, dLoc, createDate) 
VALUES
(10, 'Database Management', 'New Cav', '2021-03-21'),
(20, 'Systems Design', 'Harrow', '2021-01-06'),
(30, 'IT Development', 'New Cav', '2021-04-25'),
(40, 'Project Management', 'Regents', '2021-02-12'),
(50, 'Systems Testing', 'Marylebone', NULL);


CREATE TABLE Emp
(
	empId		INTEGER,
	fName		VARCHAR(50) 	NOT NULL,
	lName		VARCHAR(50) 	NOT NULL,
	position 	VARCHAR(50) 	NOT NULL,
	hireDate	DATE 			NOT NULL, 
	salary	DECIMAL(7,2) 	NOT NULL,   -- decimal point for two decimal points
	commPct	DECIMAL(2,2),
	email		VARCHAR(100) 	UNIQUE NOT NULL, 	
	deptNo	INTEGER,
	mgrId		INTEGER,
	CONSTRAINT e_eid_pk PRIMARY KEY (empId),
	CONSTRAINT e_dno_fk FOREIGN KEY (deptNo) REFERENCES Dept(deptNo),
 	CONSTRAINT e_mid_fk FOREIGN KEY (mgrId) REFERENCES Emp(empId)
);

INSERT INTO 
Emp (empId, fName, lName, position, hireDate, salary, commPct, email, deptNo, mgrId)
VALUES
(101, 'Joe', 'Bloggs', 'Project Manager', '2021-03-01', 5200.00, 0.25, 'jb@it.com', 40, NULL),
(102, 'Jim', 'Marts', 'Database Admin', '2021-03-22', 4400.00, NULL, 'jm@it.com', 10, 101),
(103, 'Jen', 'Fonts', 'Python Developer', '2021-04-28', 4800.00, 0.12, 'jf@it.com', 30, 101),
(104, 'Jon', 'Pop', 'Database Architect', '2021-03-23', 4000.00, NULL, 'jp@it.com', 10, 102),
(105, 'Tom', 'Dogs', 'UI Designer', '2021-01-10', 4000.00, NULL, 'td@it.com', 20, 102),
(106, 'Tek', 'Roggs', 'Project Manager', '2021-01-01', 5200.00, 0.13, 'tr@it.com', 40, NULL),
(107, 'Tim', 'Clogs', 'Java Developer', '2021-04-29', 4300.00, 0.15, 'tc@it.com', NULL, 105),
(108, 'Tam', 'Kelps', 'UX Designer', '2021-06-15', 3900.00, NULL, 'tk@it.com', NULL, 106);


CREATE TABLE Device
(
	deviceNo 		INTEGER,
	deviceMake 	VARCHAR(50) 	NOT NULL,
	deviceModel	VARCHAR(50) 	NOT NULL,
	devicePurchDate 	DATE 			NOT NULL, 
	devicePrice 	DECIMAL(7,2) 	NOT NULL, -- decimal point for two numbers
	deviceFaults 	VARCHAR(200),
	empId			INTEGER 		NOT NULL,
	CONSTRAINT d_dno_pk PRIMARY KEY (deviceNo),
	CONSTRAINT d_eid_fk FOREIGN KEY (empId) REFERENCES Emp(empId)
);

INSERT INTO 
Device 
(deviceNo, deviceMake, deviceModel, devicePurchDate, devicePrice, deviceFaults, empId)
VALUES
(751, 'Pear Phone', 'P Phone 13', '2021-01-12', 976.00, NULL, 106),
(752, 'Pear Tablet', 'P Tablet 04', '2021-01-12', 854.00, NULL, 106),
(753, 'Space Laptop', 'S PC 11', '2021-01-13', 1231.00, 'Scratched', 106),
(754, 'Space Phone', 'S Phone 11', '2021-03-23', 887.00, NULL, 101),
(755, 'Pear Tablet', 'P Tablet 05', '2021-03-23', 1045.00, NULL, 101),
(756, 'Pear Phone', 'P Phone 13', '2021-04-02', 976.00, NULL, 102),
(757, 'Pear Phone', 'P Phone 13', '2021-04-01', 976.00, NULL, 104),
(758, 'Pear Phone', 'P Phone 13', '2021-02-12', 976.00, 'Slow', 105),
(759, 'Space Laptop', 'S PC 54', '2021-02-13', 1143.00, NULL, 105),
(760, 'Space Tablet', 'S Tab 2312', '2021-02-15', 998.00, NULL, 105),
(761, 'Move Phone', 'M Phone 32', '2021-05-07', 1241.00, 'Crashes', 103),
(762, 'Move Laptop', 'M Laptop 3223', '2021-05-08', 1678.00, NULL, 103);

--____________________________________________________________________________

-- NOT AND OR runs in this order not gets the most priority

-- to update a table
UPDATE dept 
SET dLoc = 'Wellawatta'
WHERE deptNo = '30'

-- to update all location
UPDATE dept 
SET dLoc = 'Wellawatta'

-- to delete specific data row
DELETE FROM dept 
WHERE dName = 'Foundation'

-- to select a table
SELECT * FROM dept

-- to select emplyees with +300 salary (values doen't change)
SELECT lName, salary, salary +300 FROM emp;

-- to chnage the column name 
SELECT empId AS 'Emplyee ID' FROM emp;

-- to select without duplicate values
SELECT DISTINCT deptNo FROM emp;

-- to select values between
SELECT empId, lname, position, salary, deptNo FROM emp WHERE deptNo BETWEEN 10 AND 30;

-- to select logocal or value 
SELECT empId, lname, position, salary, deptNo FROM emp WHERE deptNo = 10 OR deptNo = 30;

-- to check multiple values with in keyword (list of values)
SELECT empId, lname, position, salary, deptNo FROM emp WHERE deptNo IN (10,20,30);

-- to select values from < and > symboles
SELECT empId, lname, position, salary, deptNo FROM emp WHERE salary >= 4000 AND salary <= 4800;

-- to select with LIKE (% - any number of characters [0 or 1 or many], _ - only one character)
SELECT empId, fName, lName FROM Emp WHERE  lName LIKE '%gs' -- select names ends with 'gs'
SELECT empId, fName, lName FROM Emp WHERE  lName LIKE '_ogs' -- select names ends with ONE letter front '_ogs'
SELECT empId, fName, lName, deptNo FROM Emp WHERE  lName LIKE '%gs' AND deptNo = 40 -- where department no = 40

-- get a null value
SELECT empId, fName, lName FROM Emp WHERE deptNo IS NULL

-- sorting in assending order
SELECT empId, fName, lName , deptNo FROM Emp ORDER BY deptNo;

-- sorting in decending order
SELECT empId, fName, lName , deptNo FROM Emp ORDER BY deptNo DESC;

-- sorting multiple columns in decending order 
SELECT empId, fName, lName, deptNo FROM Emp ORDER BY deptNo DESC, lName DESC;

-- add a column to a existing table
ALTER TABLE Emp ADD mgId int;

-- update an existing table 
UPDATE emp SET mgId = 101 WHERE empId = 103;

--_____________________________________________________________________________________

/* INBUILD FUNCTIONS

MIN
MAX
SUM
AVG
COUNT
CONCAT - merging two coloums into a one coloum

*/

-- to concatinate the column names and change the new column as full name and add a new table column with salary + 10%
SELECT empId AS 'Employee ID', CONCAT(fName, ' ', lName) AS 'Full Name', position, salary, salary * 1.10 AS 'Salary with 10% Increase' FROM emp;


-- count how many employees in the table
SELECT COUNT(*) FROM emp;
SELECT COUNT(*) FROM emp WHERE depNo = 10; -- count with a condition

-- total(sum) of salary who's department number = 10
SELECT SUM(salary) AS 'Total Salary' FROM emp WHERE depNo = 10; 

-- minimum salary
SELECT MIN(salary) AS 'Minimum Salary' FROM emp;

-- maximum salary
SELECT MAX(salary) AS 'Minimum Salary' FROM emp;

-- minimum salary of every department (Group By departmentNo - output shows everyones empId Full name group everyone )
SELECT empId, CONCAT(fName, ' ', lName) AS 'Full Name', MIN(salary), deptNo FROM emp GROUP BY deptNo; -- multiple mathamatical conditions group as a one

-- minimum salary of every department the salary that less than 4500 
SELECT empId, CONCAT(fName, ' ', lName) AS 'Full Name', MIN(salary), deptNo FROM emp WHERE salary <= 4500 GROUP BY deptNo ;

--______________________________________________________________________________________________________________________

-- JOIN TABLES (Inner join, Outer join, Self join) default one INNER JOIN gives the subset
-- OUTER JOIN (Left join, Right join, Full join)

-- TableName.FieldName (From employee table join department table On departmenttables.departmentNo to employeeTable departmentNo)
SELECT empId, CONCAT(fName, ' ', lName) AS 'Full Name', dName FROM emp JOIN dept ON dept.deptNo = emp.deptNo;

-- Changethe name of both tables
SELECT empId, CONCAT(fName, ' ', lName) AS 'Full Name', dName FROM e JOIN dept AS d ON d.deptNo = e.deptNo;

SELECT employee_id, CONCAT(fName, ' ', lName) AS 'FullName' E.department_id, department_name FROM department AS D INNER JOIN employee AS E ON D.department_id = E.departemnt_i

SELECT employee_id, CONCAT(fName, ' ', lName) AS 'FullName' E.department_id, department_name FROM department AS D LEFT OUTER JOIN employee AS E ON D.department_id = E.departemnt_id;

SELECT employee_id, CONCAT(fName, ' ', lName) AS 'FullName' E.department_id, department_name FROM department AS D RIGHT OUTER JOIN employee AS E ON D.department_id = E.departemnt_id;

-- Sub Queries with one value (use relational operators (=,>,<))
SELECT employee_id,first_name,salary FROM employee WHERE salary > (SELECT salary FROM employee WHERE first_name = 'Mike');

-- Sub Queries with more than one value (IN, ALL, ANY operator)
SELECT employee_id,first_name,salary FROM employee WHERE salary IN (SELECT salary FROM employee WHERE first_name LIKE '%m');