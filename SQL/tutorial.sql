SELECT deptName,empName,AVG(salary) FROM emp 
WHERE hireDate LIKE '2019%' AND empName LIKE '_a%' AND AVG(salary) > 50000
ORDER BY deptName DESC;

SELECT deptName, AVG(salary) AS avgSalary
FROM emp
WHERE hireDate LIKE '2019%' AND empName LIKE '_a%'
GROUP BY deptName
HAVING AVG(salary) > 50000
ORDER BY avgSalary DESC;

/* Find the average salary of employees working each department who were hired within 2019 along with the employees whose the first name 2nd letter is 'a'

Display only the average salaries higher than 50000 in decending order with the name of the department*/

/*
NOTE

SELECT - *, field name, functions, AS, mathematical formula
FROM - table
JOIN - 2nd table  ON joining condition (PK=FK)
WHERE condition - relational, logical, between and, like, in, ..............
GROUP BY - categories (single column grouping, multiple column grouping)
HAVING - conditions on categories (use after a group by)
ORDER BY - sorting*/