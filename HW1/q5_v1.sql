-- Database Used SQLite. https://www.tutorialspoint.com/execute_sql_online.php

CREATE TABLE Chef(
ChefName CHAR(20),
Dish  CHAR(100));

Insert into Chef values
('A'    ,      'Mint chocolate brownie'),
('B'    ,      'Upside down pineapple cake'),
('B'    ,      'Creme brulee'),
('B'    ,      'Mint chocolate brownie'),
('C'    ,      'Upside down pineapple cake'),
('C'     ,     'Creme brulee'),
('D'    ,      'Apple pie'),
('D'     ,     'Upside down pineapple cake'),
('D'      ,    'Creme brulee'),
('E'     ,     'Apple pie'),
('E'     ,     'Upside down pineapple cake'),
('E'      ,    'Creme brulee'),
('E'      ,    'Bananas Foster');


Create table Menu(

dish CHAR(100)

);

Insert into Menu values
('Apple pie'),
('Upside down pineapple cake'),
('Creme brulee');

select chefName 
from Chef c JOIN Menu m
on c.Dish = m.dish
group by chefName
having count(c.Dish) = (select count(*) from Menu); 