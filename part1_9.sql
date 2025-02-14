-- Q1. 특정 문자에 있는 모든 공백을 제거해서 출력하려면 어떻게 코드를 짜야할까요?
select replace(상품명, ' ', '') from product;

-- Q2. 위 컬럼에서 휴대폰 뒷자리 4글자만 출력하려면 어떻게 코드를 짜야할까요?
select substr(폰, 10, 4) from employee;
