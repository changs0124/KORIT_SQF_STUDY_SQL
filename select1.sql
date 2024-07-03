# 데이터 조회(DML - SELECT)

# 컬럼 전체 조회
select * from student_tb;

select `student_id`, `student_name`, `phone`, `email`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, admission_date from `student_tb`;
select student_id, student_name, phone, email, admission_date from student_tb;
# 원하는 컬럼만 조회
select student_name, phone from student_tb;
# 컬럽 위치 변경
select phone, student_name from student_tb;
# 컬럼명 바꾸기(as = alias)
select student_id, student_name as s_name from student_tb;
# union(all) 병합 조건 - 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능
select 1 as number, "name" as name, 11 as age
union all	# union all - 중복 제거 없이 위와 아래의 select 결과 합치기
select 2 as number, "name1" as name, 12 as age
union	# union - 중복을 제거해서 합치기
select 2 as number, "name1" as name, 12 as age;

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;

select
	number,
    name
from
(select 1 as number, "name" as name, 11 as age
union all
select 2 as number, "name1" as name, 12 as age
union all
select 2 as number, "name1" as name, 12 as age) as tempt_tb;











