# WHERE - 조건

select
	*
from
	student_tb
where
	# 비교 연산
	student_name = "name2";

# 3.    
select
	student_id,
    student_name
# 1.
from
	student_tb
# 2.
where
	student_name = "name2"
    or student_name = "name4";
    
SELECT * FROM study.student_tb;

select student_name as s_name, email as s_email from student_tb;

select
	*
from
	student_tb
where
	student_name = "name1"
    and email = "aaa1234@gmail.com";

select
		s_name
from
	(select student_name as s_name, email as s_email from student_tb
	union all
	select phone as s_phone, student_name as s_name from student_tb) as tempt_tb;
    
select
	*
from
	student_tb
where
	student_id > 2
    and student_id < 4;

select
	*
from
	student_tb
where
	student_name in("name1", "name3");

select
	*
from
	student_tb
where
	student_id between 2 and 4;
# not
select
	*
from
	student_tb
where
	not student_name = "name";
# null 체크
# is null / is not null
select
	*
from
	student_tb
where
	introduce is not null;
# 와일드 카드
select
	*
from
	student_tb
where
	student_name like "김%";

select
	*
from
	student_tb
where
	email like "%gmail.com";

select
	*
from
	student_tb
where
	phone like "%2222%"
    and not phone like "%2222";
    
SELECT 
    *
FROM
    student_tb
WHERE
    email LIKE '___bbb%';