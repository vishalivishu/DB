-- Database Used SQLite. https://www.tutorialspoint.com/execute_sql_online.php


create table junkmail (
Name varchar(30) not null,  
Address char(20) not null, 
ID integer not null,
SameFam integer
);

INSERT INTO junkmail values
('Alice',   'A' ,     10 ,  NULL),
('Bob'   ,  'B'  ,     15 ,  NULL),
('Carmen' , 'C'  ,     22 ,  NULL),
('Diego'  , 'A'  ,     9  ,  10),
('Ella'   , 'B'  ,     3  ,  15),
('Farkhad', 'D'  ,     11 ,  NULL);

delete from junkmail
where SameFam is NULL and ID in (select SameFam from junkmail);

select * from junkmail;