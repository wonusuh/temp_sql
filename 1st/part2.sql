-- CREATE TABLE program (
--   id INT PRIMARY KEY,
--   프로그램 VARCHAR(100),
--   가격 INT,
--   강사id INT
-- ); 
-- 
-- CREATE TABLE teacher (
--   id INT PRIMARY KEY,
--   강사 VARCHAR(100),
--   출신대학 VARCHAR(100)
-- );

select *
from program as p , teacher as t
where p.강사id  = t.id;

select * from program p
inner join teacher t
on p.강사id = t.id ;
-- ----------------------------------------------------------
select * from program p;