CREATE DATABASE school;

--__________________________________________________________

CREATE TABLE student
(
    StuId VARCHAR(5) NOT NULL,
    StuName VARCHAR(10),
    City VARCHAR(12),
    PRIMARY KEY (StuId)
);

INSERT INTO student
(StuId, StuName, City)
VALUES
('ST001','Hesara','Rajagiriya'),
('ST002','Nimadith','Borella');

--__________________________________________________________

CREATE TABLE course
(
    CourseId VARCHAR(4) NOT NULL,
    CourseName VARCHAR(10),
    PRIMARY KEY (CourseId)
);

INSERT INTO course
(CourseId, CourseName)
VALUES
('C01','Python'),
('C02','C++'),
('C03','SDLC');

--__________________________________________________________

CREATE TABLE city
(
    City VARCHAR(12) NOT NULL,
    PostCode VARCHAR(5),
    PRIMARY KEY (City)
);

INSERT INTO city
(City, PostCode)
VALUES
('Rajagiriya', '10100'),
('Borella', '00800');

--__________________________________________________________

CREATE TABLE marks
(
    StuId VARCHAR(5) NOT NULL,
    CourseId VARCHAR(4) NOT NULL,
    Marks INT(3),
    PRIMARY KEY (StuId, CourseId),
    FOREIGN KEY (StuId) REFERENCES student(StuId),
    FOREIGN KEY (CourseId) REFERENCES course(CourseId)
);


INSERT INTO marks
(StuId, CourseId, Marks)
VALUES
('ST001','C01',78),
('ST001','C03',88), 
('ST002','C01',60), 
('ST002','C02',70),  
('ST002','C03',75) 

--__________________________________________________________

-- select from a table
SELECT * FROM city;

-- sort in asending order
SELECT * FROM marks ORDER BY Marks;

-- sort in decending order
SELECT * FROM marks ORDER BY Marks DESC;