# 데이터 수정(DML - UPDATE)

SELECT 
    *
FROM
    student_tb;

select
	student_id
from
	student_tb
where
	student_name = "손경태";

# 같은 테이블에서 서브쿼리 사용 불가
# 서브 쿼리를 하나 더 사용해서 해당 테이블의 데이터를 가진 가상 테이블 생성
update
	student_tb 
set 
    email = "sch1234@gmail.com"
where
	student_id = (select student_id from (select student_id, student_name from student_tb) as temp_student_tb where student_name = "손경태");

select
	*
from
	student_tb
where
	student_id = (select student_id from student_tb where student_name = "손경태");
                        
update
	student_tb
set
	phone = "010-1234-1234"
where
	student_id = 3;