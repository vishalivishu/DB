-- Database Used SQLite. https://www.tutorialspoint.com/execute_sql_online.php


CREATE TABLE proj_status(
ProjectID CHAR(4) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(20) NOT NULL
);

INSERT INTO proj_status VALUES
('P100' ,0, 'C'),
('P100', 1, 'W'),
('P100', 2, 'W'),
('P201', 0, 'C'),
('P201', 1, 'C'),
('P333', 0,  'W'),
('P333', 1,  'W'),
('P333', 2,  'W'),
('P333', 3,  'W');


select ProjectID
from proj_Status 
where step = 0 and status = 'C'
group by projectID
having projectID not in (select projectID from proj_status where step != 0 and status = 'C');