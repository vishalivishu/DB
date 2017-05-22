-- Database Used SQLite. https://www.tutorialspoint.com/execute_sql_online.php

CREATE TABLE STUD(
SID INTEGER NOT NULL,
CLASS VARCHAR(30),
GRADE CHAR(20)
);


INSERT INTO STUD VALUES
(123, 'ART123', 'A'),
(123, 'BUS456', 'B'),
(666, 'REL100', 'D'),
(666, 'ECO966', 'A'),
(666, 'BUS456', 'B'),
(345, 'BUS456', 'A'),
(345, 'ECO966', 'F')
;


select CLASS, count(sid) as total
from STUD
group by CLASS
order by total;