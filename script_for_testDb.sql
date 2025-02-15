select * from program p
right  teacher t
on p.강사id = t.id;

select * from user_sales us;

update user_sales us
set us.email = 'test@test.com'
where us.email = '';

delete from user_sales s
where s.sales is null;