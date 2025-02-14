select * from card;


select 사용금액, if(사용금액 >= 200000,'우수','거지') as 등급
from card;

select 사용금액, 
(case
	when 사용금액 >= 200000 then '우수'
	when 사용금액 < 200000 then '평민'
	else '그지'
end)
as 등급
from card;

SELECT SUM(
    CASE 
        WHEN 고객등급 = 'vip' THEN 3
        WHEN 고객등급 = '로열' THEN 2
        ELSE 1
    END
) AS 합
FROM card;

select * from card;
-- q1
select sum(
	case
		when 사용금액 >= 300000 then (사용금액 * 1.5)
		when 사용금액 < 300000 then (사용금액 * 1.1)
	end
)
from card;

-- q2
SELECT 고객명, 사용금액, 고객등급
FROM card
WHERE 고객등급 != CASE 
    WHEN 사용금액 >= 300000 THEN 'vip'
    WHEN 사용금액 >= 200000 THEN '로열'
    ELSE '패밀리'
END