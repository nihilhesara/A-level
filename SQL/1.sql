CREATE DATABASE system;

CREATE TABLE table01
(
    Deptno INT(2) NOT NULL,
    dname VARCHAR(10),
    loc VARCHAR(10),
    PRIMARY KEY (Deptno)
);

INSERT INTO table01
(Deptno,dname,loc)
VALUES
(10,'Sales','Chicago'),
(20,'Sales','Chicago'),
(30,'Finance','New York');

CREATE TABLE table02
(
    Empno INT(3) NOT NULL,
    Ename VARCHAR(1),
    Job VARCHAR(10),
    Deptno INT(2),
    PRIMARY KEY (Empno),
    FOREIGN KEY (Deptno) REFERENCES table01(Deptno)
);

INSERT INTO table02
(Empno,Ename,Job)
VALUES
(101,'A','Salesmen',10),
(102,'B','Manager',10),
(103,'C','Manager',20);