CREATE TABLE studentInfo(
    studentNo INT(4),
    studentName VARCHAR(10),
    class VARCHAR(5),
    address VARCHAR(50),
    PRIMARY KEY (studentNo)
);

INSERT INTO studentinfo
(studentNo,studentName,class,address)
VALUES
(001,"Nihil","13-M2","Rajagiriya"),
(002,"Hesara","10-E","Nawala"),
(003,"Nimadith","11-C","Koswatta");

/* library table */

CREATE TABLE library(
    libraryNo INT(5),
    bookName VARCHAR(20),
    studentNo INT(4),
    PRIMARY KEY (libraryNo),
    FOREIGN KEY (studentNo) REFERENCES studentinfo(studentNo) -- Foreign key
);

INSERT INTO library
(libraryNo,bookName,studentNo)
VALUES
(1001,"Madolduuva",002),
(1002,"Sirithmaldama",001),
(1003,"damma padaya",003);

    