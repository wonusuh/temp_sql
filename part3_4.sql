select * from newtable n;
-- 
insert into newtable
values('2020-01-01 12:10:00');

select * from blog b order by b.발행일;

select * from blog b
where b.발행일 >= '2022-03-05 00:00:00'
and b.발행일 < now();

select date_format(now(), '%y. %m. %d.');

select * from login_record lr
order by lr.last_login;
-- Q1. 
select count(*) from login_record lr
where lr.last_login >= '2022-11-01'
and lr.last_login < '2022-12-01';

-- Q2.
update login_record
set last_login = DATE_ADD(last_login, INTERVAL 1 DAY);

-- Q3.
select * from login_record lr
where month(lr.last_login) = 9
and day (lr.last_login) % 2 = 0;
