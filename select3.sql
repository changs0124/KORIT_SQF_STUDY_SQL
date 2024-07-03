# group by - 그룹
# 집계 -> count, max, min, sum, avg
# null은 카운트 불가

select
	admission_date,
	count(*)
from
	student_tb
group by
	admission_date;