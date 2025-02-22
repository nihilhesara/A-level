CREATE TABLE CLASS
(
    ClassId INT(5) NOT NULL,
    ClassName VARCHAR(8),
    ClassTeacher VARCHAR(20),
    Stream VARCHAR(20),
    AYear INT(4),
    PRIMARY KEY (ClassId)
);

INSERT INTO CLASS
(ClassId, ClassName, ClassTeacher, Stream, AYear)
VALUES
(1111,"12-A","A.B. Perera","Physical Science",2017),
(1112,"12-B","N. Mohamed","Bio Science",2017),
(1113,"13-A","E. Selvadurai","Arts",2017),
(1114,"13-B","L. De Silva","Commerce",2018);

CREATE TABLE STUDENT
(
    IndexNumber INT(5) NOT NULL,
    ClassId INT(5),
    Initials VARCHAR(10),
    Surname VARCHAR(20),
    DateOfBirth DATE,
    PRIMARY KEY (IndexNumber),
    FOREIGN KEY (ClassId) REFERENCES CLASS (ClassId)
);

INSERT INTO STUDENT
(IndexNumber, ClassId, Initials, Surname, DateOfBirth)
VALUES
(8991,1112,"E","Nazeer","1999-12-06"),
(8993,1111,"S","Sivalingam","1999-02-06"),
(8995,1112,"W","Fernando","1999-11-11"),
(8997,1113,"U. H","De Silva","1999-08-06");