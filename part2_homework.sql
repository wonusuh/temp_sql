-- 상품
select * from product p;

-- 일별 매출장부
select * from sales s;

-- 유저
select * from user_table u;

-- Q1.
select s.id, s.고객번호, s.구매날짜, p.상품명, p.가격 from sales s
inner join product p
on s.상품id  = p.id;

-- Q2.
select s.id, s.고객번호, s.구매날짜, p.상품명, p.가격, u.고객명 from sales s
inner join product p
on s.상품id = p.id
inner join user_table u
on s.고객번호 = u.id
order by s.id asc;

-- Q3
select 구매날짜, sum(가격) as 일별합계
from sales
	inner join product
		on sales.상품id = product.id
	inner join user_table
		on sales.고객번호 = user_table.id
group by 구매날짜;

-- Q1. 매출내역에 없는 상품들을 출력해보자
select s.구매날짜, p.상품명 from sales s
right outer join product p
on s.상품id = p.id
where s.구매날짜 is null;

-- Q2. 매출내역에 없는 고객들을 출력해보자
select * from sales s
right outer join user_table u
on s.고객번호 = u.id;

