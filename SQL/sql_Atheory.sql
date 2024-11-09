CREATE DATABASE school;

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