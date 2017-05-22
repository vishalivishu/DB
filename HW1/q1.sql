-- Database Used SQLite. https://www.tutorialspoint.com/execute_sql_online.php
-- HotelStays is the original table and dHotelStays is a dummy table.


CREATE TABLE HotelStays
(roomNum INTEGER NOT NULL,
arrDate DATE NOT NULL,
depDate DATE NOT NULL CHECK (depDate >= arrDate),
guestName CHAR(20) NOT NULL,
PRIMARY KEY (roomNum, arrDate));

CREATE TABLE dHotelStays
(roomNum INTEGER NOT NULL,
arrDate DATE NOT NULL,
depDate DATE NOT NULL CHECK (depDate >= arrDate),
guestName CHAR(30) NOT NULL,
PRIMARY KEY (roomNum, arrDate));

INSERT INTO dHotelStays(roomNum, arrDate, depDate, guestName)
values
(123, date('2016-02-02'), date('2016-02-06'), 'A'),
(123, date('2016-02-04'), date('2016-02-08'), 'B'),
(201, date('2016-02-10'), date('2016-02-13'), 'C'),
(201, date('2016-02-12'), date('2016-02-15'), 'D');

INSERT INTO HotelStays(roomNum, arrDate, depDate, guestName)
select g.roomNum, g.arrDate, g.depDate, g.guestName 
from dHotelStays g where not exists(select g.roomNum, g.arrDate, g.depDate, g.guestName from dHotelStays h
where h.roomNum = g.roomNum and h.guestName != g.guestName and h.arrDate < g.arrDate 
and h.depDate > g.arrDate);

select * from HotelStays;