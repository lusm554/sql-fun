-- SELECT
select * from pc;

select * from pc order by code desc;

select distinct speed, ram from pc;

-- SORT
select distinct speed, ram
from pc
order by 2 desc;

select distinct speed, ram
from pc
order by speed desc, ram desc;

select distinct speed, ram
from pc
where price < 500::money
order by 2 desc;

select model from pc
group by model
order by max(price) desc;

-- ships db
select name
from battles
order by extract(month from date), extract(day from date);

select * from product
where maker = 'A' and type = 'PC';

-- same 

select * from product
where maker = 'A'
intersect
select * from product
where type = 'PC';

select * from product
where maker = 'A'
union
select * from product
where maker = 'B';

select * from product
where not type = 'PC';

select model, speed
from pc
where price between 400::money and 600::money;

select model, speed, hd
from pc
where hd in (10, 20);
