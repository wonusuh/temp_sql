select * from product
where 가격 = 5000
and 카테고리 = '가구';

-- Q. 카테고리가 신발 가전 식품인 상품들만 출력하시오
select * from product
where 카테고리 = '신발'
or 카테고리 = '가전'
or 카테고리 = '식품';

-- Q1. 오늘 다룬 테이블에서 재고가 20이하인 상품들을 상품명 가나다 순으로 출력해보십시오.
select * from product
where 재고 <= 20
order by 상품명 asc;

-- Q2. 가격이 3000원 미만이거나 6000원 초과인 상품들만 출력해봅시다.
select * from product
where 가격 < 3000
or 가격 > 6000;

-- Q3. 카테고리가 옷이 아닌 것들 중 가격이 5천원인 상품들만 출력해봅시다.
select * from product
where 카테고리 != '옷'
and 가격 = 5000;

-- Q4. 상품명이 셔츠, 반팔티, 운동화가 아닌 상품들만 출력해봅시다.
 select * from product
 where 상품명 != '셔츠'
 and 상품명 != '반팔티'
 and 상품명 != '운동화';
