# Group by - 집계, 중복 제거

select * from book_tb;

SELECT 
	# select 된 것 중에서 중복을 제거 해라
    distinct
    category_id,
    publisher_id
FROM
    book_tb;

# 4.    
select
	category_id,
    count(*)
# 1.
from
	book_tb
# 2.
where
	book_id > 7000
# 3.
group by
	category_id;
    
# 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 가테고리별로 묶으시오

select
	category_id,
	category_count
from
	(select 
			category_id,
			count(*) as category_count
	from
		book_tb
	where
		book_name like "%돈%"
	group by
		category_id) as temp_tb
where
	category_count > 10;
    
select 
	category_id,
	count(*) as category_count
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id
# having부터 select 다음에
having
	category_count > 10;

    
    
