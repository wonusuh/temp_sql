-- Q. 사용금액이 평균보다 높은 사람만 출력
select * from card
where 사용금액 > (
	select avg(사용금액) from card
);

select * from card
where 고객명 in (
	select * from blacklist
);

-- Q1. "고객등급이 패밀리인 사람들의 평균 연체횟수"보다 연체횟수가 높은 사람은 몇명일까요?
-- SELECT 어쩌구 쿼리가 2번 필요할 수 있습니다. 심심하면 하나로 합쳐보십쇼
select count(*) from card
where 연체횟수 > (
	select avg(연체횟수) from card
	where 고객등급 = '패밀리'
);

-- Q2. 위 사진처럼 개인의 사용금액이 평균사용금액과 얼마나 차이가 나는지 출력해봅시다.
select card.고객명 , card.사용금액 , card.사용금액  -(select avg(card.사용금액 ) from card) as 'DIFF'
from card;